void  SpuFree(int);                               /* extern */
int func_80044D1C(int);                                 /* extern */
int func_80044D44();                                /* extern */
extern char svm_vab_used[];
extern unsigned short svm_vab_count;
extern int D_800787F0[];

void SsVabClose(short vabid) {
    unsigned char temp_v1;

    if (vabid < 16U) {
        temp_v1 = svm_vab_used[vabid];
        if (temp_v1 < 3) {
            if (temp_v1 != 0) {
                SpuFree(D_800787F0[vabid]);
                svm_vab_used[vabid] = 0;
                svm_vab_count -= 1;
                if (func_80044D44() == 1) {
                    func_80044D1C(0);
                }
            }
        }
    }
}

