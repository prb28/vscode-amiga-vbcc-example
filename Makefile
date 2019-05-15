CC=vc
VASM=vasmm68k_mot
VLINK=vlink
LDFLAGS=-stdlib
CONFIG=+aos68k
ODIR=build-vbcc

EXE=fs-uae/hd0/hello
_OBJ = hello.o mul_by_ten.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

# Prepare variables for target 'clean'
ifeq ($(OS),Windows_NT)
	RM:=del
	PATHSEP:=\\
	CONFIG:=${CONFIG}_win
else
	RM:=rm -f 
	PATHSEP:=/
endif

all: $(EXE)

$(EXE) : $(OBJ) 
	$(VLINK) -bamigahunk -x -Bstatic -Cvbcc -nostdlib $(VBCC)/targets/m68k-amigaos/lib/startup.o $(OBJ) -L$(VBCC)/targets/m68k-amigaos/lib -lvc -o $(EXE)

$(ODIR)/%.o : %.c
	$(CC) $(CONFIG) -g -c -o $@ $<

$(ODIR)/%.o : %.s
	$(VASM) -quiet -m68000 -Fhunk -linedebug -o $@ $<


clean:
	-$(RM) $(ODIR)$(PATHSEP)*.o
	-$(RM) $(subst /,$(PATHSEP),$(EXE))