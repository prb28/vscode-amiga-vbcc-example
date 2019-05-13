CC=vc
LDFLAGS=-stdlib
CONFIG=+aos68k
ODIR=build-vbcc

EXE=fs-uae/hd0/hello
_OBJ = hello.o mul_by_ten.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

all: clean $(EXE)

$(EXE) : $(OBJ) 
	$(CC) $(CONFIG) $(LDFLAGS) -o $(EXE) $(OBJ)

$(ODIR)/%.o : %.c
	$(CC) $(CONFIG) -g -c -o $@ $<

$(ODIR)/%.o : %.s
	$(CC) $(CONFIG) -c -o $@ $<

clean:
	rm -f $(ODIR)/*.o
	rm -f $(EXE)