.PHONY = clean directories

VPATH = src:test:include:build:bin

# default target
all: directories profileTest.out

# Flags, compiler, etc.
CPPC = g++
CPPFLAGS = -I ./include

# Directory locations
BUILDDIR = ./build
BINDIR = ./bin

# Create the application
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