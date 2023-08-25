// struct _m2c_stack_func_8004D5A0 {
//     /* 0x00 */ char pad0[0x18];
// };                                                  /* size = 0x18 */

void  func_8004472C(int);                               /* extern */
int func_80044D1C(int);                                 /* extern */
int func_80044D44();                                /* extern */
extern char D_80078790[];
extern unsigned short D_800787E8;
extern int D_800787F0[];

void func_8004D5A0(unsigned short arg0) {
    unsigned char temp_v1;

    if (arg0 < 16) {
        if (D_80078790[arg0] < 3) {
            if (D_80078790[arg0] != 0) {
                func_8004472C(D_800787F0[arg0]);
                D_80078790[arg0] = 0;
                D_800787E8 -= 1;
                if (func_80044D44() == 1) {
                    func_80044D1C(0);
                }
            }
        }
    }
}

