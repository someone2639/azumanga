.section .data

.ascii "PS-X EXE"      /* Magic number */
.word 0x00000000       /* Zerofilled */
.word 0x00000000       /* Zerofilled */
.word 0x800155F0       /* Initial PC */
.word 0x00000000       /* Initial $gp/r28 */
.word 0x80010000       /* .text start */
.word 0x0005C000       /* .text size */
.word 0x00000000       /* .data start */
.word 0x00000000       /* .data size */
.word 0x00000000       /* .bss start */
.word 0x00000000       /* .bss size */
.word 0x801FFFF0       /* Initial $sp/r29 & $fp/r30 base */
.word 0x00000000       /* Initial $sp/r29 & $fp/r30 offset */
.word 0x00000000       /* Reserved */
.word 0x00000000       /* Reserved */
.word 0x00000000       /* Reserved */
.word 0x00000000       /* Reserved */
.word 0x00000000       /* Reserved */
.ascii "Sony Computer Entertainment Inc. for Japan area\0\0\0\0\0" /* Sony Inc */
