#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#include <vector>
#include <string>
#include <algorithm>
#include <filesystem>

using u32=uint32_t;
#define ALIGN4(x) (((x) + 3) & -4)

void usage(char *nm) {
    printf("Usage: %s path/to/file.apf\n", nm);
    exit(1);
}

typedef struct APF_FILE_ {
    char magic[8]; // APF_vM.m
    uint16_t _008;
    uint16_t _00A;
    uint16_t _00C; // _008 + _00C is the number of All Nodes?
    uint16_t _00E;
    uint32_t NodeTableSize;
    uint32_t Params;
    uint32_t FileBodySector;
    uint32_t RootNodeCount;
} APF_FILE;

typedef struct _APF_NODE {
    u32 magic; // 0x0000007A
    u32 _004;
    u32 siz;
    u32 _00C;
    u32 _010[3];
    char name[50]; // _01C, var len, 4 aligned
    u32 _continue; // 0x10000000
    u32 various[6]; // all 0?
    char folder[50]; // var len, 4 aligned
} NodeData;

class Node {
    public:
        Node(u32 off) {
            this->offset = off;
            memset(this->data.name, 0, sizeof(this->data.name));
            memset(this->data.folder, 0, sizeof(this->data.folder));

        };
        void print();
        void ParseNode(FILE *f);
        bool isRoot;
        std::string path;
        u32 offset;
        NodeData data;
};


std::vector<Node> nodes;
char currFolder[500];

void Node::print() {
    printf("Node @ %s", this->path.c_str());
    if (this->isRoot) {
        printf(" (Root)\n");
    } else {
        printf("\n");
    }
    printf("    magic: 0x%08X\n", this->data.magic);
    printf("    Node Offset: 0x%08X [file: %08X]\n", this->offset, this->offset + 0x800);
    if (this->isRoot == false) {
        printf("    _004: 0x%08X\n", this->data._004);
        printf("    Size: 0x%08X\n", this->data.siz);
        printf("    _00C: 0x%08X\n", this->data._00C);
        printf("    _010: [0x%08X 0x%08X 0x%08X]\n",
            this->data._010[0],
            this->data._010[1],
            this->data._010[2]
        );
    } else {
        printf("    various: [0x%08X 0x%08X 0x%08X 0x%08X 0x%08X 0x%08X]\n",
            this->data.various[0],
            this->data.various[1],
            this->data.various[2],
            this->data.various[3],
            this->data.various[4],
            this->data.various[5]
        );
    }
}

std::string SEPARATOR("\\");

void Node::ParseNode(FILE *f) {
    fseek(f, this->offset + 0x800, SEEK_SET);
    fread(&this->data.magic, sizeof(u32), 1, f);
    if (this->data.magic == 0x10000000) {
        this->isRoot = true;
    } else {
        this->isRoot = false;
        fread(&this->data._004, sizeof(u32), 1, f);
        fread(&this->data.siz, sizeof(u32), 1, f);
        fread(&this->data._00C, sizeof(u32), 1, f);
        fread(&this->data._010[0], sizeof(u32), 1, f);
        fread(&this->data._010[1], sizeof(u32), 1, f);
        fread(&this->data._010[2], sizeof(u32), 1, f);

        // God forgive me for this hack
        strcpy(this->data.name, f->_IO_read_ptr);
        fseek(f, ALIGN4(strlen(this->data.name)), SEEK_CUR);

        fread(&this->data._continue, sizeof(u32), 1, f);
        if (this->data._continue != 0x10000000) {
            this->path = std::string(currFolder) + SEPARATOR + std::string(this->data.name);
            return;
        }
    }

    // parse continue data
    fread(&this->data.various[0], sizeof(u32), 1, f);
    fread(&this->data.various[1], sizeof(u32), 1, f);
    fread(&this->data.various[2], sizeof(u32), 1, f);
    fread(&this->data.various[3], sizeof(u32), 1, f);
    fread(&this->data.various[4], sizeof(u32), 1, f);
    fread(&this->data.various[5], sizeof(u32), 1, f);

    // God forgive me for this hack again
    strcpy(currFolder, f->_IO_read_ptr);
    // fseek(f, ALIGN4(strlen(this->data.folder)), SEEK_CUR);

    this->path = std::string(currFolder);
    if (strlen(this->data.name) != 0) {
        this->path +=
                 SEPARATOR
               + std::string(this->data.name);
    }
}

int main(int argc, char **argv) {
    FILE *f;

    if (argc < 2) {
        usage(argv[0]);
    }

    f = fopen(argv[1], "rb");

    APF_FILE fil;

    fread(fil.magic, 1, 8, f);
    fread(&fil._008, sizeof(uint16_t), 1, f);
    fread(&fil._00A, sizeof(uint16_t), 1, f);
    fread(&fil._00C, sizeof(uint16_t), 1, f);
    fread(&fil._00E, sizeof(uint16_t), 1, f);
    fread(&fil.NodeTableSize, sizeof(uint32_t), 1, f);
    fread(&fil.Params, sizeof(uint32_t), 1, f);
    fread(&fil.FileBodySector, sizeof(uint32_t), 1, f);
    fread(&fil.RootNodeCount, sizeof(uint32_t), 1, f);

    if (strncmp(fil.magic, "APF_", 4) != 0) {
        printf("APFrs / Read data is None APF file.\n");
    }
    else if (strncmp(fil.magic, "APF_v2.0", 8) == 0) {
        printf("APFrs / Read data is APF file.\n");
        printf("APFrs / All nodes \t\t: %d\n", fil._008 + fil._00C);
        printf("APFrs / Root nodes\t\t: %d\n", fil.RootNodeCount);
        // printf("APFrs / Node table sector\t: %d\n", arg1->unk4);
        printf("APFrs / Node table size\t\t: %d\n", fil.NodeTableSize);
        printf("APFrs / File body sector\t: %d\n", fil.FileBodySector);
        // printf("APFrs / Head sector\t\t: %d\n", arg1->unk14);
        printf("APFrs / Parameters\t\t: %d\n", fil.Params);
    }
    else {
        printf("APFrs / Read data is APF Version different.\n");
    }


    // first viewable data is at 0x800
    fseek(f, 0x800, SEEK_SET);

    while (1) {
        uint32_t b;
        fread(&b, sizeof(uint32_t), 1, f);
        if ((nodes.size() > 0)
         && (ftell(f) >= 0x800 + nodes[0].offset)) {
            break;
        }

        nodes.emplace_back(Node(b));
    }

    struct stat st;

    for (Node &n : nodes) {
        n.ParseNode(f);

        std::string path = std::string("fs/") + n.path;
        std::replace( path.begin(), path.end(), '\\', '/'); // replace all 'x' to 'y'

        std::filesystem::path p = path;
        n.path = p;
        n.print();
    }

    printf("File Count: %ld\n", nodes.size());

    fclose(f);
}