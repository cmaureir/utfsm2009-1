CC = gcc
CFLAGS=-Wall -g
EXE1 = intro
OBJ1 = intro.o
EXE2 = intro-mejora
OBJ2 = intro-mejora.o
EXE3 = espacial
OBJ3 = espacial.o
EXE4 = temporal
OBJ4 = temporal.o

all: $(EXE1) $(EXE2) $(EXE3) $(EXE4)

$(EXE1):	$(OBJ1)
	$(CC) -o $@ $^ -lm -lrt -std=c99
$(EXE2):	$(OBJ2)
	$(CC) -o $@ $^ -lm -lrt -std=c99
$(EXE3):	$(OBJ3)
	$(CC) -o $@ $^ -lm -lrt -std=c99
$(EXE4):	$(OBJ4)
	$(CC) -o $@ $^ -lm -lrt -std=c99

clean:
	rm -fr *.o *~ $(EXE1) $(EXE2) $(EXE3) $(EXE4)
