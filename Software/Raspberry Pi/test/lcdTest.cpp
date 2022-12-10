// Copyright 2018 Chris Hamer
/*    This file is part of RaspLCDDriver.

    RaspLCDDriver is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    RaspLCDDriver is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with RaspLCDDriver.  If not, see <http://www.gnu.org/licenses/>. 
*/

#include "i2cControl.hpp"
#include "lcdDriver.hpp"

//Only included to allow a sleep to show clearing display etc
#include <chrono>
#include <thread>
#include <string>

using std::string;

#define lcdAddress 0x27 // I2C device address

//Compile with gcc lcdDriver.c i2cControl.c test.c -o lcdDriverTestMain -lstdc++
//Or g++ lcdDriver.c i2cControl.c test.c -o lcdDriverTestMain

int main(int argc, char *argv[])
{
    I2cControl *i2c = new I2cControl(1); //Using software i2c
    LcdDriver lcd(lcdAddress, i2c);

    lcd.setLine(1, "This is my string");

    delete i2c;

    return 0;
}
