# === LIBRARY ===
# Display
import os

# Image Input
from PIL import Image
import numpy as np

# Sending UART
import time

# plotting image
from matplotlib import pyplot as plt

# serial coms
import serial
import serial.tools.list_ports
ports = serial.tools.list_ports.comports()


# === FUNCTION ===

# convert binary to bit
def binaryToDecimal(binary):
 
    decimal, i = 0, 0
    while(binary != 0):
        dec = binary % 10
        decimal = decimal + dec * pow(2, i)
        binary = binary//10
        i += 1
    return decimal
    # print(decimal)

# bit to decimal converter for each data
def binarytoDecimalMatrix(matrix):
    temp_matrix = []
    for row in matrix:
        temp_element = []
        for element in row:
            intelement = int(element)
            decelement = binaryToDecimal(intelement)
            temp_element.append(decelement)
        temp_matrix.append(temp_element)
    return temp_matrix

# divide matrix by row
def rowparser(matrix, width):
    temp_row = []
    temp_matrix = []
    i = 0
    for element in matrix:
        temp_row.append(element)
        i += 1
        if i >= width:
            temp_matrix.append(temp_row)
            temp_row = []
            i = 0
    return temp_matrix

# === ALGORITHM ===

con_verify = True
con_serial = False

# running home menu until the right choice is picked
while True:
    # to clear screen
    os.system('cls')
    print("=== Presets Images ===")
    print("1. Creepy.png (5x5 pixels)")
    print("2. Memario.png (10x10 pixels)")
    print("3. car.png (4:3)")
    print("4. jamur.png (6:4)")
    print("5. stiv.png (4:6)")

    # to pick which image to choose
    image_choice = int(input("Input Preset Image Number = "))
    if image_choice == 1:
        image = Image.open("PC-Side\Images\Creepy.png").convert("RGB")
    elif image_choice == 2:
        image = Image.open("PC-Side\Images\Memario.png").convert("RGB")
    elif image_choice == 3:
        image = Image.open("PC-Side\Images\car.png").convert("RGB")
    elif image_choice == 4:
        image = Image.open("PC-Side\Images\jamur.png").convert("RGB")
    elif image_choice == 5:
        image = Image.open("PC-Side\Images\stiv.png").convert("RGB")

    # get data for width and height of picture
    width, height = image.size
    max_width = 100
    max_height = 100

    if not(0 < width <= max_width and 0 < height <= max_height):
        print("Error : width and height not compatible")
    else: 
        break

# Serial Communication
# Python code transmits a byte to Arduino /Microcontroller
if con_serial == True:
    print()
    print("PORT DESCRIPTION")
    portar = []
    for port, desc, hwid in sorted(ports):
            print("{}: {} [{}]".format(port, desc, hwid))
            portar.append(port)

    print()
    print("PORTS")
    for number, letter in enumerate(portar):
        print(number+1, letter)
    # /Get avail ports then select port

    serpick = int(input("Input Choice Number = "))
    SerialObj = serial.Serial(portar[serpick-1])
                                        # ttyUSBx format on Linux
    SerialObj.baudrate = 9600           # set Baud rate to 9600
    SerialObj.bytesize = 8              # Number of data bits = 8
    SerialObj.parity  ='N'              # No parity
    SerialObj.stopbits = 1              # Number of Stop bits = 1
    SerialObj.close()

# find pixel data for the picture
imgdata_lokal = []

for y in range(height):
    for x in range(width):
        r, g, b = image.getpixel((x, y))
        bin_r = format(int(r), '08b')
        bin_g = format(int(g), '08b')
        bin_b = format(int(b), '08b')
        matrix_rgb = [bin_r, bin_g, bin_b]
        imgdata_lokal.append(matrix_rgb)

# sending and receiving from fpga (1 pixel per proses)
imgdata_send = imgdata_lokal
temp_arr = []
imgdata_edited = []
r_send = imgdata_lokal[0][0]
g_send = imgdata_lokal[0][1]
b_send = imgdata_lokal[0][2]
SerialObj.write(r_send)
SerialObj.write(g_send)
SerialObj.write(b_send)

for i in range(0 height):
    for j in range(0, width):
        for element in range (0,3):
            temp_data = SerialObj.read()
            temp_arr.append(temp_data)
        imgdata_edited.append(temp_arr)
        if len(temp_arr) == 3:
            temp_arr = []
            indeksnow = i*width + j + 1
            if indeksnow < height*width*3:
                r_send = imgdata_lokal[indeksnow][0]
                g_send = imgdata_lokal[indeksnow][1]
                b_send = imgdata_lokal[indeksnow][2]    
                SerialObj.write(r)
                SerialObj.write(g)
                SerialObj.write(b)
                
# image data display
imgdata_final = rowparser(binarytoDecimalMatrix(imgdata_lokal), width)
plt.imshow(imgdata_final)
plt.show()

# Verification Data
if con_verify == True:
    print()
    print("=== VERIFICATION ===")
    print("image data lokal")
    for element in imgdata_lokal:
        print(element)
    print("parsed data")
    for element in imgdata_final:
        print(element)

