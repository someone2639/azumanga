default: all

NO_COL  := \\033[0m
RED     := \\033[0;31m
GREEN   := \\033[0;32m
BLUE    := \\033[0;34m
YELLOW  := \\033[0;33m
BLINK   := \\033[32;5m

NAME = azumanga
EXE = slps_034.24

all: build/$(EXE)
	sha256sum -c azumanga.sha256

CROSS = mips64-elf-

AS := tools/gcc-2.95.2/as
LD := $(CROSS)ld

CODE_S = $(wildcard asm/*.s)
DATA_S = $(wildcard asm/data/*.s)
OBJS = $(foreach file, $(CODE_S) $(DATA_S), build/$(file:.s=.o)) build/assets/80.o

ASFLAGS := -32 -march=r3000 -mtune=r3000 -msoft-float -no-pad-sections -Iinclude/

DUMMY != mkdir -p build/ build/asm/ build/asm/data/ build/assets/

clean:
	rm -rf build/

build/%.o: %.s
	@printf "    [ASM] $(YELLOW)$<$(GREEN) -> $(BLUE)$@$(NO_COL)\n"
	$(AS) -EL $(ASFLAGS) -o $@ $<

build/%.o: %.bin
	@printf "    [BIN] $(YELLOW)$<$(GREEN) -> $(BLUE)$@$(NO_COL)\n"
	$(LD) -EL -r -b binary -o $@ $<

build/$(EXE): $(OBJS)
	$(LD) -EL -T undefined_funcs_auto.txt -T undefined_syms_auto.txt -T $(EXE).ld -Map build/azumanga.map -o $@.o
	$(CROSS)objcopy -O binary $@.o $@



print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
