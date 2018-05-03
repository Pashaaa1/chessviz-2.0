flags = -g3 -O0 -Wall -Werror

./bin/board :bin ./build/main.o ./build/chess.o
	    gcc $(flags) -o ./bin/board ./build/main.o ./build/chess.o -lm

./build/main.o : build ./src/main.c ./src/chess.h
	    gcc $(flags) -o ./build/main.o -c ./src/main.c

./build/chess.o : build ./src/chess.c ./src/chess.h
	    gcc $(flags) -o ./build/chess.o -c ./src/chess.c


bin:
	mkdir bin

build:
	mkdir build

.PHONY: clean open gdb

clean:
	    rm -rf ./build/ ./bin/
open:
	    ./bin/board
gdb:
	    gdb ./bin/board
