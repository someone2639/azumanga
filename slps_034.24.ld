SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(2)
    {
        header_DATA_START = .;
        header = .;
        build/asm/header.o(.data);
        header_DATA_END = .;
        header_DATA_SIZE = ABSOLUTE(header_DATA_END - header_DATA_START);
    }
    __romPos += SIZEOF(.header);
    header_ROM_END = __romPos;
    header_VRAM_END = .;

    _80_ROM_START = __romPos;
    _80_VRAM = ADDR(._80);
    ._80 : AT(_80_ROM_START) SUBALIGN(2)
    {
        _80_DATA_START = .;
        _80 = .;
        build/assets/80.o(.data);
        _80_DATA_END = .;
        _80_DATA_SIZE = ABSOLUTE(_80_DATA_END - _80_DATA_START);
    }
    __romPos += SIZEOF(._80);
    _80_ROM_END = __romPos;
    _80_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80010000 : AT(main_ROM_START) SUBALIGN(4)
    {
        main_RODATA_START = .;
        build/asm/data/800.rodata.o(.rodata);
        build/asm/data/1650.rodata.o(.rodata);
        build/asm/data/16F0.rodata.o(.rodata);
        build/asm/data/1740.rodata.o(.rodata);
        build/asm/data/1880.rodata.o(.rodata);
        build/asm/data/19D0.rodata.o(.rodata);
        build/asm/data/1F90.rodata.o(.rodata);
        build/asm/data/2460.rodata.o(.rodata);
        build/asm/data/25A0.rodata.o(.rodata);
        build/asm/data/2830.rodata.o(.rodata);
        build/asm/data/2DF0.rodata.o(.rodata);
        build/asm/data/2E10.rodata.o(.rodata);
        build/asm/data/2E30.rodata.o(.rodata);
        build/asm/data/2E50.rodata.o(.rodata);
        build/asm/data/3110.rodata.o(.rodata);
        build/asm/data/3160.rodata.o(.rodata);
        build/asm/data/3190.rodata.o(.rodata);
        build/asm/data/3470.rodata.o(.rodata);
        build/asm/data/36B0.rodata.o(.rodata);
        build/asm/data/38B0.rodata.o(.rodata);
        build/asm/data/3CE0.rodata.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
        main_TEXT_START = .;
        build/asm/main.o(.text);
        build/asm/117D0.o(.text);
        main_DATA_START = .;
        _18E38_data = .;
        build/asm/data/18E38.data.o(.data);
        build/asm/18FB8.o(.text);
        build/asm/35EF0.o(.text);
        build/asm/36020.o(.text);
        build/asm/36130.o(.text);
        build/asm/36610.o(.text);
        build/asm/36B30.o(.text);
        build/asm/36D10.o(.text);
        build/asm/37120.o(.text);
        build/asm/37450.o(.text);
        build/asm/379D0.o(.text);
        build/asm/37E80.o(.text);
        build/asm/37F10.o(.text);
        build/asm/38350.o(.text);
        build/asm/38530.o(.text);
        build/asm/38AA0.o(.text);
        build/asm/38AE0.o(.text);
        build/asm/38FB0.o(.text);
        build/asm/39000.o(.text);
        build/src/3DDA0.o(.text);
        build/asm/3DE50.o(.text);
        build/asm/4AEF0.o(.text);
        build/asm/4AF30.o(.text);
        build/asm/4AF60.o(.text);
        build/asm/51540.o(.text);
        build/asm/51600.o(.text);
        build/asm/516C0.o(.text);
        build/asm/517C0.o(.text);
        build/asm/518E0.o(.text);
        build/asm/519C0.o(.text);
        build/asm/51A40.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        _52EB0_data = .;
        build/asm/data/52EB0.data.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(4)
    {
        main_BSS_START = .;
        build/asm/data/800.rodata.o(.bss);
        build/asm/data/1650.rodata.o(.bss);
        build/asm/data/16F0.rodata.o(.bss);
        build/asm/data/1740.rodata.o(.bss);
        build/asm/data/1880.rodata.o(.bss);
        build/asm/data/19D0.rodata.o(.bss);
        build/asm/data/1F90.rodata.o(.bss);
        build/asm/data/2460.rodata.o(.bss);
        build/asm/data/25A0.rodata.o(.bss);
        build/asm/data/2830.rodata.o(.bss);
        build/asm/data/2DF0.rodata.o(.bss);
        build/asm/data/2E10.rodata.o(.bss);
        build/asm/data/2E30.rodata.o(.bss);
        build/asm/data/2E50.rodata.o(.bss);
        build/asm/data/3110.rodata.o(.bss);
        build/asm/data/3160.rodata.o(.bss);
        build/asm/data/3190.rodata.o(.bss);
        build/asm/data/3470.rodata.o(.bss);
        build/asm/data/36B0.rodata.o(.bss);
        build/asm/data/38B0.rodata.o(.bss);
        build/asm/data/3CE0.rodata.o(.bss);
        build/asm/main.o(.bss);
        build/asm/117D0.o(.bss);
        build/asm/18FB8.o(.bss);
        build/asm/35EF0.o(.bss);
        build/asm/36020.o(.bss);
        build/asm/36130.o(.bss);
        build/asm/36610.o(.bss);
        build/asm/36B30.o(.bss);
        build/asm/36D10.o(.bss);
        build/asm/37120.o(.bss);
        build/asm/37450.o(.bss);
        build/asm/379D0.o(.bss);
        build/asm/37E80.o(.bss);
        build/asm/37F10.o(.bss);
        build/asm/38350.o(.bss);
        build/asm/38530.o(.bss);
        build/asm/38AA0.o(.bss);
        build/asm/38AE0.o(.bss);
        build/asm/38FB0.o(.bss);
        build/asm/39000.o(.bss);
        build/asm/3DDA0.o(.bss);
        build/asm/3DE50.o(.bss);
        build/asm/4AEF0.o(.bss);
        build/asm/4AF30.o(.bss);
        build/asm/4AF60.o(.bss);
        build/asm/51540.o(.bss);
        build/asm/51600.o(.bss);
        build/asm/516C0.o(.bss);
        build/asm/517C0.o(.bss);
        build/asm/518E0.o(.bss);
        build/asm/519C0.o(.bss);
        build/asm/51A40.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
