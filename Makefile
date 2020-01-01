ASSEMBLER6502		= acme
AS_FLAGS			= -f cbm -DMACHINE_C64=0
RM					= rm

PROGS				= hello.prg

hello.prg:
	$(ASSEMBLER6502) $(AS_FLAGS) --outfile hello.prg hello.asm

all: $(PROGS)

clean:
	$(RM) -f $(PROGS)

run: clean hello.prg
	./x16emu -prg hello.prg -run -scale 2
