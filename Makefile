#Makefile

MineSweeper : mine.o MineSweeper.o MineMap.o DirectoryManager.o
	g++ -g mine.o MineSweeper.o MineMap.o DirectoryManager.o -o MineSweeper

mine.o : mine.cpp
	g++ -c mine.cpp

MineSweeper.o : MineSweeper.cpp
	g++ -c MineSweeper.cpp

MineMap.o : MineMap.cpp
	g++ -c MineMap.cpp

DirectoryManager.o  : DirectoryManager.cpp
	g++ -c DirectoryManager.cpp

clean :
	rm -rf *.o
