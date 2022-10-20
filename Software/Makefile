.PHONY = clean directories

VPATH = src:test:include:build:bin

# default target
all: directories profileTest.out profileReadTest.out keypressTest.out keypressesTest.out

# Flags, compiler, etc.
CPPC = g++
CPPFLAGS = -I ./include

# Directory locations
BUILDDIR = ./build
BINDIR = ./bin

# Create the application
keypressesTest.out: keypressesTest.o keypresses.o keypress.o
	$(CPPC) -o ./bin/keypressesTest.out ./build/keypressesTest.o ./build/keypresses.o ./build/keypress.o

keypressesTest.o: keypressesTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypressesTest.o ./*/keypressesTest.cpp

keypresses.o: keypresses.cpp keypresses.hpp	
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypresses.o ./*/keypresses.cpp

keypressTest.out: keypressTest.o keypress.o
	$(CPPC) -o ./bin/keypressTest.out ./build/keypressTest.o ./build/keypress.o

keypress.o: keypress.cpp keypress.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypress.o ./*/keypress.cpp

keypressTest.o: keypressTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypressTest.o ./*/keypressTest.cpp

profileReadTest.out: profileReadTest.o profile.o fixedModelData.o
	$(CPPC) -o ./bin/profileReadTest.out ./build/profileReadTest.o ./build/profile.o ./build/fixedModelData.o

profileReadTest.o: profileReadTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/profileReadTest.o ./*/profileReadTest.cpp

profileTest.out: profileTest.o profile.o fixedModelData.o
	$(CPPC) -o ./bin/profileTest.out ./build/profileTest.o ./build/profile.o ./build/fixedModelData.o

profileTest.o: profileTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/profileTest.o ./*/profileTest.cpp

profile.o: profile.cpp profile.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/profile.o ./*/profile.cpp

fixedModelData.o: fixedModelData.cpp fixedModelData.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/fixedModelData.o ./*/fixedModelData.cpp

# Created needed directories
directories: $(BUILDDIR) $(BINDIR)

$(BUILDDIR): 
	mkdir $(BUILDDIR)

$(BINDIR): 
	mkdir $(BINDIR)

# target to remove everything
clean: 
	-rm -rf ./build
	-rm -rf ./bin