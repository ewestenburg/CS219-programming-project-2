assemblyReader: main.o assemblyReader.o
	g++ -g main.o assemblyReader.o -o assemblyReader

main.o: main.cpp assemblyReader.h 
	g++ -c main.cpp assemblyReader.h 

assemblyReader.o: assemblyReader.h assemblyReader.cpp
	g++ -c assemblyReader.cpp

clean:
	rm *.o
