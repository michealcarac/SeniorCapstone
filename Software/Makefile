.PHONY = clean directories

VPATH = src:test:include:build:bin

# default target
#all: directories fixedModelDataTest.out profileTest.out profileReadTest.out keypressTest.out keypressesTest.out keyboardTest.out fullTest.out
all: directories fixedModelDataTest.out keypressTest.out keypressesTest.out keyboardTest.out

# Flags, compiler, etc.
CPPC = g++
CPPFLAGS = -I ./include
LDFLAGS = -g -L/usr/X11/lib -lX11

# Directory locations
BUILDDIR = ./build
BINDIR = ./bin
PROFDIR = ./profiles

# Create the fullTest
fullTest.out: fullTest.o profile.o fixedModelData.o
	$(CPPC) -o ./bin/fullTest.out ./build/fullTest.o ./build/profile.o ./build/fixedModelData.o $(LDFLAGS)

fullTest.o: fullTest.cpp
	$(CPPC) $(CPPFLAGS) $(LDFLAGS) -g -L/usr/X11/lib -lX11 -c -o ./build/fullTest.o ./*/fullTest.cpp

# Create the keyboardTest
keyboardTest.out: keyboardTest.o keypresses.o keypress.o
	$(CPPC) -o ./bin/keyboardTest.out ./build/keyboardTest.o ./build/keypresses.o ./build/keypress.o $(LDFLAGS)

keyboardTest.o: keyboardTest.cpp
	$(CPPC) $(CPPFLAGS) $(LDFLAGS) -g -L/usr/X11/lib -lX11 -c -o ./build/keyboardTest.o ./*/keyboardTest.cpp

# Create the keypressesTest
keypressesTest.out: keypressesTest.o keypresses.o keypress.o
	$(CPPC) -o ./bin/keypressesTest.out ./build/keypressesTest.o ./build/keypresses.o ./build/keypress.o

keypressesTest.o: keypressesTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypressesTest.o ./*/keypressesTest.cpp

# Create keypressTest
keypressTest.out: keypressTest.o keypress.o
	$(CPPC) -o ./bin/keypressTest.out ./build/keypressTest.o ./build/keypress.o

keypressTest.o: keypressTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypressTest.o ./*/keypressTest.cpp

# Create profileReadTest
profileReadTest.out: profileReadTest.o profile.o fixedModelData.o
	$(CPPC) -o ./bin/profileReadTest.out ./build/profileReadTest.o ./build/profile.o ./build/fixedModelData.o

profileReadTest.o: profileReadTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/profileReadTest.o ./*/profileReadTest.cpp

# Create profileTest
profileTest.out: profileTest.o profile.o fixedModelData.o
	$(CPPC) -o ./bin/profileTest.out ./build/profileTest.o ./build/profile.o ./build/fixedModelData.o

profileTest.o: profileTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/profileTest.o ./*/profileTest.cpp

# Create fixedModelDataTest
fixedModelDataTest.out: fixedModelData.o fixedModelDataTest.o graph.o
	$(CPPC) $(CPPFLAGS) -o ./bin/fixedModelDataTest.out ./build/fixedModelDataTest.o ./build/fixedModelData.o ./build/graph.o

fixedModelDataTest.o: fixedModelDataTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/fixedModelDataTest.o ./*/fixedModelDataTest.cpp

# Create components
graph.o: graph.cpp graph.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/graph.o ./*/graph.cpp

keypresses.o: keypresses.cpp keypresses.hpp	
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypresses.o ./*/keypresses.cpp

keypress.o: keypress.cpp keypress.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypress.o ./*/keypress.cpp

profile.o: profile.cpp profile.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/profile.o ./*/profile.cpp

fixedModelData.o: fixedModelData.cpp fixedModelData.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/fixedModelData.o ./*/fixedModelData.cpp

# Created needed directories
directories: $(BUILDDIR) $(BINDIR) $(PROFDIR)

$(BUILDDIR): 
	mkdir $(BUILDDIR)

$(BINDIR): 
	mkdir $(BINDIR)

$(PROFDIR):
	mkdir $(PROFDIR)

# target to remove everything
clean: 
	-rm -rf ./build
	-rm -rf ./bin