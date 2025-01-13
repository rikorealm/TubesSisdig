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
# input row collumn array 1x3
def binarytoDecimalMatrix(matrix):
    temp_matrix = []
    for row in matrix:
        temp_element = []
        for element in row:
            temp_rgb = []
            for rgb in element:
                intrgb = int(rgb)
                decrgb = binaryToDecimal(intrgb)
                temp_rgb.append(decrgb)
            temp_element.append(temp_rgb)
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

# flatten array
def flatten(matrix):
    flatten = []
    for row in matrix:
        for column in row:
            for element in column:
                flatten.append(element)
    return flatten

# Send binary
def write(data : int):    
    if 0 <= data <= 255:
          SerialObj.write(bytes([data]))

# === ALGORITHM ===

con_verify = False
con_serial = True

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
    print("6. Rainbow (8x8)")
    # to pick which image to choose
    image_choice = int(input("Input Preset Image Number = "))
    if image_choice == 1:
        image = Image.open("TubesSisdig\PC-Side\Images\Creepy.png").convert("RGB")
    elif image_choice == 2:
        image = Image.open("PC-Side\Images\Memario.png").convert("RGB")
    elif image_choice == 3:
        image = Image.open("PC-Side\Images\car.png").convert("RGB")
    elif image_choice == 4:
        image = Image.open("PC-Side\Images\jamur.png").convert("RGB")
    elif image_choice == 5:
        image = Image.open("PC-Side\Images\stiv.png").convert("RGB")
    elif image_choice == 6:
        image = Image.open("PC-Side\Codes\mrainbow.png").convert("RGB")

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
SerialObj.baudrate = 115200           # set Baud rate to 9600
SerialObj.bytesize = 8              # Number of data bits = 8
SerialObj.parity  ='N'              # No parity
SerialObj.stopbits = 1              # Number of Stop bits = 1
# SerialObj.close()

# find pixel data for the picture
imgdata_lokal = []

for y in range(height):
    for x in range(width):
        r, g, b = image.getpixel((x, y))
        matrix_rgb = [r, g, b]
        imgdata_lokal.append(matrix_rgb)

print(imgdata_lokal)
# os.wait()
# imgdata_lokal = rowparser(imgdata_lokal, width)

# image scaler
# canvas size (8 x 8)
# scaled_width = 8
# scaled_height = 8
# imgdata_scaled = [[[0, 0, 0] for i in range(0, scaled_width)] for j in range (0, scaled_height)]

# original_width = width
# original_height = height
# final_width = scaled_width
# final_height = scaled_height

# width_ratio = final_width/original_width
# height_ratio = final_height/original_height

# # condition
# test_ww = original_width * width_ratio
# test_hw = original_height * width_ratio
# test_wh = original_width * height_ratio
# test_hh = original_height * height_ratio

# if test_ww < final_width and test_hw < final_width:
#     ratio = int(width_ratio)
# elif test_wh < final_width and test_hh < final_width:
#     ratio = int(height_ratio)
# else:
#     ratio = int(width_ratio)

# # output scaling algorithm
# expected_width = int(original_width * ratio)
# expected_height = int(original_height *ratio)
# center_width = int((final_width - expected_width) / 2)
# center_height = int((final_height - expected_height) / 2)
# # expected_img_array = np.zeros((expected_height, expected_width, channels), dtype=original_img_array.dtype)

# for heightnow in range (0, expected_height, ratio):
#     for widthnow in range (0, expected_width, ratio):
#         original_height_now = int((heightnow/ratio))
#         original_width_now = int((widthnow/ratio))
#         # print(original_height_now, original_width_now)
#         for i in range (heightnow, heightnow + ratio):
#             for j in range (widthnow, widthnow + ratio):
#                 imgdata_scaled[center_height + i][center_width + j] = imgdata_lokal[original_height_now][original_width_now]

# # sending and receiving from fpga (1 pixel per proses)
# flatten_imgdata_scaled = flatten(imgdata_scaled)
imgdata_send = imgdata_lokal
temp_arr = []
imgdata_edited = []
for i in range(0, 64):
    r_send = imgdata_lokal[i][0]
    g_send = imgdata_lokal[i][1]
    b_send = imgdata_lokal[i][2]
#     print(r_send)
    SerialObj.write(r_send)
    SerialObj.write(g_send)
    SerialObj.write(b_send)
# os.wait()

for j in range (0, 64):
    element = []
    for z in range(3):
        e = int(SerialObj.read().hex(), 16)
        element.append(e)
    imgdata_edited.append(element)
 
# image data display
# print(imgdata_scaled)
print(imgdata_edited)

imgdata_final = rowparser(imgdata_edited, 8)
plt.imshow(imgdata_final)
plt.show()

# Verification Data
# if con_verify == True:
#     print()
#     print("=== VERIFICATION ===")
#     print("image data lokal")
#     for element in imgdata_lokal:
#         print(element)
#     print("parsed data")
#     for element in imgdata_final:
#         print(element)