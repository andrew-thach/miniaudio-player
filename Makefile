player: main.o miniaudio.o
	g++ -o player main.o miniaudio.o -ldl -lpthread -lm

main.o: main.cpp miniaudio.c miniaudio.h
	g++ -c main.cpp

miniaudio.o:
	g++ -c miniaudio.c

clean:
	rm -f player *.o *~
