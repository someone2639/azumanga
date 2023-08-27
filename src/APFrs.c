struct _m2c_stack_func_80051BE4 {
    /* 0x00 */ char pad0[0x10];
    /* 0x10 */ s8 sp10;                             /* inferred */
    /* 0x11 */ char pad11[7];                       /* maybe part of sp10[8]? */
    /* 0x18 */ u16 sp18;                            /* inferred */
    /* 0x1A */ char pad1A[2];
    /* 0x1C */ u16 sp1C;                            /* inferred */
    /* 0x1E */ char pad1E[2];
    /* 0x20 */ s32 sp20;                            /* inferred */
    /* 0x24 */ s32 sp24;                            /* inferred */
    /* 0x28 */ s32 sp28;                            /* inferred */
    /* 0x2C */ u16 sp2C;                            /* inferred */
    /* 0x2E */ char pad2E[0x12];
};                                                  /* size = 0x40 */

struct _m2c_stack_func_80051DC8 {
    /* 0x00 */ char pad0[0x30];
};                                                  /* size = 0x30 */

struct _m2c_stack_func_80051EFC {
    /* 0x00 */ char pad0[0x18];
};                                                  /* size = 0x18 */

struct _m2c_stack_func_80051F24 {
    /* 0x00 */ char pad0[0x18];
};                                                  /* size = 0x18 */

struct _m2c_stack_func_80051F44 {
    /* 0x00 */ char pad0[0x10];
    /* 0x10 */ CdlLOC sp10;                         /* inferred */
    /* 0x14 */ char pad14[0x24];
};                                                  /* size = 0x38 */

struct _m2c_stack_func_80052054 {};                 /* size 0x0 */

struct _m2c_stack_func_8005205C {};                 /* size 0x0 */

s32 *func_80031474(s32, ? *);                       /* extern */
? func_80031550(s32 *);                             /* extern */
? func_80039028(s8 *, s8 *);                        /* extern */
? func_8003904C(s8 *, s8 *);                        /* extern */
s32 func_80039994(s8 *, s32, ?, ?);                 /* extern */
? func_80039BB4(?);                                 /* extern */
? func_80039D50(s8 *, s32);                         /* extern */
? func_80039EA0(s32 *, CdlLOC *, ?, s32);           /* extern */
s32 func_8003BF28(? *);                             /* extern */
? func_8003BF54(? *, s32);                          /* extern */
? func_8003BFD8(? *, s32);                          /* extern */
void func_80051F24(s32, ?, ?);                      /* static */
void func_80051F44(void *arg0, CdlLOC *arg1, void *arg2); /* static */
s32 func_80052054();                                /* static */
s32 func_8005205C(s32 arg0, s32 arg1);              /* static */
extern ? D_80012960;
extern s32 D_80072F20;
extern ? D_80073358;

void func_80051A88(void *arg0, CdlLOC *arg1, s32 *arg2) {
    s32 *temp_s6;
    s32 *var_s2;
    s32 temp_s0;
    s32 temp_v0;
    s32 var_s3;
    s32 var_s5;
    s8 *var_s1;
    void *temp_a3;

    var_s2 = arg2;
    var_s5 = func_80052054();
    var_s3 = 0;
    temp_s6 = var_s2;
    if (arg0->unk0 != 0) {
        var_s1 = arg1 + 8;
        do {
            temp_a3 = temp_s6 + *var_s2;
            if (temp_a3->unk0 & 0x10000000) {
                var_s1->unk-8 = temp_a3->unk4 << 5;
                var_s1->unk16 = 0x0800;
                var_s1->unk-4 = temp_a3->unk8;
                strncpy(var_s1, ((arg0->unk10 << 5) >> 3) + temp_a3 + 0xD, 0x00000016);
                func_80039028(var_s1, var_s1);
                var_s2 += 4;
            } else {
                var_s1->unk-8 = temp_a3->unk4;
                var_s1->unk16 = 0;
                var_s1->unk-4 = temp_a3->unk8;
                strncpy(var_s1, temp_a3 + (((arg0->unk10 << 5) >> 3) + 0xC), 0x00000016);
                func_80039028(var_s1, var_s1);
                temp_s0 = var_s1->unk-8;
                temp_v0 = func_8005205C(temp_s0, var_s5);
                var_s5 = temp_s0;
                var_s1->unk-8 = temp_v0;
                var_s2 += 4;
            }
            var_s3 += 1;
            var_s1 += 0x20;
        } while (var_s3 < arg0->unk0);
    }
}

typedef struct APF_FILE_ {
    char magic[8]; // APF_vM.m
    u16 _008;
    u16 _00A;
    u16 _00C; // _008 + _00C is the number of All Nodes?
    u32 NodeTableSize;
    u32 Params;
    u32 FileBodySector;
    u32 RootNodeCount;
} APF_FILE;

s32 func_80051BE4(s32 arg0, void *arg1) {
    APF_FILE fil;
    ? *var_a0;
    s32 temp_v0;
    u16 temp_v1;

    D_80072F20 |= 0x20;
    if (func_80039994(&fil, arg0, 0, 0x20) != 0) {
        if (strncmp(&fil.magic, "APF_", 4) != 0) {
            D_8006B898("APFrs / Read data is None APF file.\n");
        }
        else if (strncmp(&fil.magic, "APF_v2.0", 8) == 0) {
            D_8006B898("APFrs / Read data is APF file.\n");
            temp_v0 = CdPosToInt(&D_80072F20 + 0x14);
            temp_v1 = fil._008 + fil._00C;
            arg1->unk0 = temp_v1;
            arg1->unk4 = temp_v0 + 1;
            arg1->unk14 = temp_v0;
            arg1->unk2 = sp2C;
            arg1->unk8 = sp28;
            arg1->unkC = sp20;
            arg1->unk10 = sp24;
            D_8006B898("APFrs / All nodes \t\t: %d\n", temp_v1 & 0xFFFF);
            D_8006B898("APFrs / Root nodes\t\t: %d\n", arg1->unk2);
            D_8006B898("APFrs / Node table sector\t: %d\n", arg1->unk4);
            D_8006B898("APFrs / Node table size\t\t: %d\n", arg1->unkC);
            D_8006B898("APFrs / File body sector\t: %d\n", arg1->unk8);
            D_8006B898("APFrs / Head sector\t\t: %d\n", arg1->unk14);
            D_8006B898("APFrs / Parameters\t\t: %d\n", arg1->unk10);
            return arg1->unk0 << 5;
        }
        else {
            D_8006B898("APFrs / Read data is APF Version different.\n");
        }
    }
block_7:
    return 0;
}

s32 func_80051DC8(s32 arg0, ? arg1, ? arg2) {
    ? *var_s1;
    s32 temp_v0;
    s8 *temp_s0;
    void *var_a0;

    temp_v0 = func_8003BF28(&D_80073358);
    if (temp_v0 == 0) {
        return -1;
    }
    temp_s0 = temp_v0 + 0xE;
    func_80039D50(temp_s0, arg0);
    strcat(temp_s0, "/");
    func_8003904C(temp_s0, temp_s0);
    func_80039028(temp_s0, temp_s0);
    var_s1 = D_80073358.unk4;
    if (var_s1 != NULL) {
        var_a0 = var_s1 + 0xE;
loop_5:
        if (strcmp(var_a0, temp_s0) != 0) {
            var_s1 = *var_s1;
            var_a0 = var_s1 + 0xE;
            if (var_s1 == NULL) {
                goto block_8;
            }
            goto loop_5;
        }
        func_8003BF54(&D_80073358, temp_v0);
        return -2;
    }
block_8:
    func_80051F24(temp_v0, arg1, arg2);
    func_8003BFD8(&D_80073358, temp_v0);
    D_8006B898("APFrs / APF Mount = [%s]\n", temp_s0);
    return temp_v0;
}

void func_80051EFC(void *arg0, s32 arg1) {
    func_80051BE4(arg1, arg0);
}

void func_80051F24(void) {
    func_80051F44();
}

void func_80051F44(void *arg0, CdlLOC *arg1, void *arg2) {
    CdlLOC sp10;
    CdlLOC *var_s1;
    s32 *temp_s3;
    s32 var_s0;

    var_s1 = arg1;
    arg0->unk8 = var_s1;
    arg0->unkC = arg2->unk2;
    temp_s3 = func_80031474(arg2->unkC, "Apf mount work.[HAYASI]");
    CdIntToPos(arg2->unk4, &sp10);
    func_80039BB4(0);
    func_80039EA0(temp_s3, &sp10, 0, arg2->unkC);
    func_80039BB4(0);
    func_80051A88(arg2, var_s1, temp_s3);
    var_s0 = arg2->unk0 - 1;
    if (var_s0 != -1) {
        do {
            if (var_s1->unk1E & 0x800) {
                var_s1->unk0 = var_s1->unk0 + arg1;
            } else {
                CdIntToPos(var_s1->unk0 + arg2->unk14, var_s1);
            }
            var_s0 -= 1;
            var_s1 += 0x20;
        } while (var_s0 != -1);
    }
    func_80031550(temp_s3);
}

s32 func_80052054(void) {
    return 0x00000456;
}

s32 func_8005205C(s32 arg0, s32 arg1) {
    return arg0 ^ arg1;
}

