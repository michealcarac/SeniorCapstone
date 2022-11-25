 #
# Keyboard Emulator Using a Pi Pico and CircuitPython
#
# References 
# - https://learn.adafruit.com/circuitpython-essentials/circuitpython-hid-keyboard-and-mouse
#
#

import time
import board
import digitalio
import usb_hid
import busio
from adafruit_hid.keyboard import Keyboard
from adafruit_hid.keyboard_layout_us import KeyboardLayoutUS
from adafruit_hid.keycode import Keycode

time.sleep(1)
keyboard = Keyboard(usb_hid.devices)
keyboard_layout = KeyboardLayoutUS(keyboard)

# instantiate the uart
uart = busio.UART(board.GP16, board.GP17, baudrate=115200)



while True:
    data = uart.read(1) # set data to uart.read(1); 1 indicates that one byte is read at a time. This is important to better represent a keypress.

    if data:
        try: # try to decode the data
            decoded_data = data.decode("utf-8") # decoded data
        except: # if it can't, continue through
            continue

        #added the lowercase characters for the alphabet
        if decoded_data == 'a':
            keyboard.press(Keycode.A)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'A':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.A)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'b':
            keyboard.press(Keycode.B)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'B':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.B)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'c':
            keyboard.press(Keycode.C)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'C':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.C)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'd':
            keyboard.press(Keycode.D)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'D':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.D)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'e':
            keyboard.press(Keycode.E)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'E':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.E)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'f':
            keyboard.press(Keycode.F)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'F':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.F)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'g':
            keyboard.press(Keycode.G)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'G':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.G)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'h':
            keyboard.press(Keycode.H)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'H':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.H)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'i':
            keyboard.press(Keycode.I)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'I':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.I)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'j':
            keyboard.press(Keycode.J)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'J':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.J)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'k':
            keyboard.press(Keycode.K)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'K':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.K)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'l':
            keyboard.press(Keycode.L)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'L':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.L)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'm':
            keyboard.press(Keycode.M)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'M':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.M)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'n':
            keyboard.press(Keycode.N)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'N':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.N)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'o':
            keyboard.press(Keycode.O)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'O':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.O)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'p':
            keyboard.press(Keycode.P)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'P':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.P)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'q':
            keyboard.press(Keycode.Q)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'Q':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.Q)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'r':
            keyboard.press(Keycode.R)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'R':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.R)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 's':
            keyboard.press(Keycode.S)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'S':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.S)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 't':
            keyboard.press(Keycode.T)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'T':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.T)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'u':
            keyboard.press(Keycode.U)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'U':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.U)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'v':
            keyboard.press(Keycode.V)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'V':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.V)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'w':
            keyboard.press(Keycode.W)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'W':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.W)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'x':
            keyboard.press(Keycode.X)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'X':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.X)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'y':
            keyboard.press(Keycode.Y)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'Y':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.Y)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'z':
            keyboard.press(Keycode.Z)
            keyboard.release_all()
            print(decoded_data)

        elif decoded_data == 'Z':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.Z)
            keyboard.release_all()
            print(decoded_data)

        #Added the use of space, enter and backspace.

        elif data == b'\r':
            keyboard.press(Keycode.ENTER)
            keyboard.release_all()
            print(decoded_data)

        elif data == b'\x7f':
            keyboard.press(Keycode.BACKSPACE)
            keyboard.release_all()
            print(decoded_data)

        elif data == b' ':
            keyboard.press(Keycode.SPACE)
            keyboard.release_all()

        # Added Numbers
        elif data == b'1':
            keyboard.press(Keycode.ONE)
            keyboard.release_all()

        elif data == b'2':
            keyboard.press(Keycode.TWO)
            keyboard.release_all()

        elif data == b'3':
            keyboard.press(Keycode.THREE)
            keyboard.release_all()

        elif data == b'4':
            keyboard.press(Keycode.FOUR)
            keyboard.release_all()

        elif data == b'5':
            keyboard.press(Keycode.FIVE)
            keyboard.release_all()

        elif data == b'6':
            keyboard.press(Keycode.SIX)
            keyboard.release_all()

        elif data == b'7':
            keyboard.press(Keycode.SEVEN) #abcd
            keyboard.release_all()

        elif data == b'8':
            keyboard.press(Keycode.EIGHT) #abcd
            keyboard.release_all()

        elif data == b'9':
            keyboard.press(Keycode.NINE) #abcd
            keyboard.release_all()

        elif data == b'0':
            keyboard.press(Keycode.ZERO) #abcd
            keyboard.release_all()

        # Added typical special characters used with passwords

        elif data == b'!':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.ONE)
            keyboard.release_all()

        elif data == b'@':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.TWO)
            keyboard.release_all()

        elif data == b'#':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.THREE)
            keyboard.release_all()

        elif data == b'$':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.FOUR)
            keyboard.release_all()

        elif data == b'%':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.FIVE)
            keyboard.release_all()

        elif data == b'&':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.SEVEN) #abcd
            keyboard.release_all()

        elif data == b'(':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.NINE) #abcd
            keyboard.release_all()

        elif data == b')':
            keyboard.press(Keycode.LEFT_SHIFT, Keycode.ZERO) #abcd
            keyboard.release_all()

        elif data == b'.':
            keyboard.press(Keycode.PERIOD) #abcd
            keyboard.release_all()
            
        else:
            print("Fuck this project")

