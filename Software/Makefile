.PHONY = clean directories

VPATH = src:test:include:build:bin

# default target
all: directories fixedModelDataTest.out profileTest.out profileReadTest.out keypressTest.out keypressesTest.out keyboardTest.out fullTest.out keyloggerTest.out lcdTest.out
#all: directories fixedModelDataTest.out keypressTest.out keypressesTest.out keyboardTest.out

# Flags, compiler, etc.
CPPC = g++ -std=c++11
CPPFLAGS = -I./include -I/opt/X11/include
LDFLAGS = -g -L/opt/X11/lib -lX11

# Directory locations
BUILDDIR = ./build
BINDIR = ./bin
PROFDIR = ./profiles

# Create the lcdTest
lcdTest.out: lcdTest.o i2cControl.o lcdDriver.o
	$(CPPC)  -o ./bin/lcdTest.out ./build/lcdTest.o ./build/i2cControl.o ./build/lcdDriver.o 

lcdTest.o: lcdTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/lcdTest.o ./*/lcdTest.cpp

# Create the keyloggerTest
keyloggerTest.out: keyloggerTest.o profile.o fixedModelData.o graph.o keypress.o keypresses.o graphStats.o keylogger.o i2cControl.o lcdDriver.o
	$(CPPC)  -o ./bin/keyloggerTest.out ./build/keyloggerTest.o ./build/profile.o ./build/fixedModelData.o ./build/graph.o ./build/keypress.o ./build/keypresses.o ./build/graphStats.o ./build/keylogger.o ./build/i2cControl.o ./build/lcdDriver.o $(LDFLAGS)

keyloggerTest.o: keyloggerTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keyloggerTest.o ./*/keyloggerTest.cpp

# Create the fullTest
fullTest.out: fullTest.o profile.o fixedModelData.o graph.o keypress.o keypresses.o graphStats.o
	$(CPPC)  -o ./bin/fullTest.out ./build/fullTest.o ./build/profile.o ./build/fixedModelData.o ./build/graph.o ./build/keypress.o ./build/keypresses.o ./build/graphStats.o $(LDFLAGS)

fullTest.o: fullTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/fullTest.o ./*/fullTest.cpp

# Create the keyboardTest
keyboardTest.out: keyboardTest.o keypresses.o keypress.o graph.o
	$(CPPC) -o ./bin/keyboardTest.out ./build/keyboardTest.o ./build/keypresses.o ./build/keypress.o ./build/graph.o $(LDFLAGS)

keyboardTest.o: keyboardTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keyboardTest.o ./*/keyboardTest.cpp

# Create the keypressesTest
keypressesTest.out: keypressesTest.o keypresses.o keypress.o graph.o
	$(CPPC) -o ./bin/keypressesTest.out ./build/keypressesTest.o ./build/keypresses.o ./build/keypress.o ./build/graph.o

keypressesTest.o: keypressesTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypressesTest.o ./*/keypressesTest.cpp

# Create keypressTest
keypressTest.out: keypressTest.o keypress.o
	$(CPPC) -o ./bin/keypressTest.out ./build/keypressTest.o ./build/keypress.o

keypressTest.o: keypressTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keypressTest.o ./*/keypressTest.cpp

# Create profileReadTest
profileReadTest.out: profileReadTest.o profile.o fixedModelData.o graph.o graphStats.o
	$(CPPC) -o ./bin/profileReadTest.out ./build/profileReadTest.o ./build/profile.o ./build/fixedModelData.o ./build/graph.o ./build/graphStats.o

profileReadTest.o: profileReadTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/profileReadTest.o ./*/profileReadTest.cpp

# Create profileTest
profileTest.out: profileTest.o profile.o fixedModelData.o graph.o graphStats.o
	$(CPPC) -o ./bin/profileTest.out ./build/profileTest.o ./build/profile.o ./build/fixedModelData.o ./build/graph.o ./build/graphStats.o

profileTest.o: profileTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/profileTest.o ./*/profileTest.cpp

# Create fixedModelDataTest
fixedModelDataTest.out: fixedModelData.o fixedModelDataTest.o graph.o
	$(CPPC) $(CPPFLAGS) -o ./bin/fixedModelDataTest.out ./build/fixedModelDataTest.o ./build/fixedModelData.o ./build/graph.o

fixedModelDataTest.o: fixedModelDataTest.cpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/fixedModelDataTest.o ./*/fixedModelDataTest.cpp

# Create components
keylogger.o: keylogger.cpp keylogger.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/keylogger.o ./*/keylogger.cpp

graphStats.o: graphStats.cpp graphStats.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/graphStats.o ./*/graphStats.cpp

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

i2cControl.o: i2cControl.cpp i2cControl.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/i2cControl.o ./*/i2cControl.cpp

lcdDriver.o: lcdDriver.cpp lcdDriver.hpp
	$(CPPC) $(CPPFLAGS) -c -o ./build/lcdDriver.o ./*/lcdDriver.cpp

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