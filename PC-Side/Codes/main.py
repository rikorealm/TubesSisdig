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

def flattenrow(matrix):
    temp_matrix = []
    for row in matrix:
        for element in row:
            temp_matrix.append(element)
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

# === CONSTANTS ===
# UART

# canvas size (8 x 8)

# === ALGORITHM ===

con_verify = False
con_serial = True

# running home menu until the right choice is picked
while True:
    global max_width, max_height
    # to clear screen
    os.system('cls')
    print("=== Presets Images ===")
    print("0.  Block.png (8x8 pixels)")
    print("1.  Calico.png (4x4 pixels)")
    print("2.  Cookie.png (2x2 pixels)")
    print("3.  Face.png (5x5)")
    print("4.  Luigi.png (8x8)")
    print("5.  Mario.png (8x8)")
    print("6.  Midnight (4x4)")
    print("7.  Mine (7x7)")
    print("8.  Rubik's (3x3)")
    print("9.  Shirt (6x6)")
    print("10. Tree (5x5)")

    imgpaths = {
        0  : "PC-Side\Codes\TestImages\mblock.png",
        1  : "PC-Side\Codes\TestImages\mcalico.png",
        2  : "PC-Side\Codes\TestImages\mcookie.png",
        3  : "PC-Side\Codes\TestImages\mface.png",
        4  : "PC-Side\Codes\TestImages\luigi.png",
        5  : "PC-Side\Codes\TestImages\shortmario.png",
        6  : "PC-Side\Codes\TestImages\mmidnight.png",
        7  : "PC-Side\Codes\TestImages\minepaint.png",
        8  : "PC-Side\Codes\TestImages\mrubik.png",
        9  : "PC-Side\Codes\TestImages\marioshirt.png",
        10 : "PC-Side\Codes\TestImages\mtree.png"
    }

    # to pick which image to choose
    image_choice = int(input("Input Preset Image Number = "))
    image = Image.open(imgpaths.get(image_choice)).convert("RGB")

    # get data for width and height of picture
    width, height = image.size

    # image size final and max
    max_width = 8
    max_height = 8

    if not(0 < width <= max_width and 0 < height <= max_height and width >= height):
        print("Error : width and height not compatible")
    else: 
        break

# Serial Communication
# Python code transmits a byte to Arduino /Microcontroller
if con_serial == True:
    baudrate = 9600
    byte_size = 8
    parity = 'N'
    stop_bit = 1

    os.system("cls")
    portar = []
    for port, desc, hwid in sorted(ports):
        portar.append(port)
    
    print("=== Ports ===")
    for number, letter in enumerate(portar):
        print(number+1, letter)
    # /Get avail ports then select port
    serpick = int(input("Input Choice Number = "))
    SerialObj = serial.Serial(portar[serpick-1])
                                        # ttyUSBx format on Linux
    SerialObj.baudrate = baudrate           # set Baud rate to 9600
    SerialObj.bytesize = byte_size              # Number of data bits = 8
    SerialObj.parity  = parity              # No parity
    SerialObj.stopbits = stop_bit              # Number of Stop bits = 1

# find pixel data for the picture
imgdata_lokal = []

# data in array of 3 integers. parsed by pixels and not columnn
for y in range(height):
    for x in range(width):
        r, g, b = image.getpixel((x, y))
        matrix_rgb = [r, g, b]
        imgdata_lokal.append(matrix_rgb)

imgdata_lokal = rowparser(imgdata_lokal, width)

scaled_width = 8
scaled_height = 8

# image scaler
imgdata_scaled = [[[0, 0, 0] for i in range(0, scaled_width)] for j in range (0, scaled_height)]

original_width = width
original_height = height
final_width = scaled_width
final_height = scaled_height

width_ratio = final_width/original_width
height_ratio = final_height/original_height

# condition
test_ww = original_width * width_ratio
test_hw = original_height * width_ratio
test_wh = original_width * height_ratio
test_hh = original_height * height_ratio

if test_ww < final_width and test_hw < final_width:
    ratio = int(width_ratio)
elif test_wh < final_width and test_hh < final_width:
    ratio = int(height_ratio)
else:
    ratio = int(width_ratio)

# output scaling algorithm
expected_width = int(original_width * ratio)
expected_height = int(original_height *ratio)
center_width = int((final_width - expected_width) / 2)
center_height = int((final_height - expected_height) / 2)
# expected_img_array = np.zeros((expected_height, expected_width, channels), dtype=original_img_array.dtype)

for heightnow in range (0, expected_height, ratio):
    for widthnow in range (0, expected_width, ratio):
        original_height_now = int((heightnow/ratio))
        original_width_now = int((widthnow/ratio))
        # print(original_height_now, original_width_now)
        for i in range (heightnow, heightnow + ratio):
            for j in range (widthnow, widthnow + ratio):
                imgdata_scaled[center_height + i][center_width + j] = imgdata_lokal[original_height_now][original_width_now]

flatten_imgdata_scaled = flattenrow(imgdata_scaled)

# sending and receiving from fpga (1 pixel per proses)
imgdata_send = flatten_imgdata_scaled
temp_arr = []
imgdata_edited = []

for i in range(0, scaled_width*scaled_height):
    r_send = flatten_imgdata_scaled[i][0]
    g_send = flatten_imgdata_scaled[i][1]
    b_send = flatten_imgdata_scaled[i][2]

    write(r_send)
    write(g_send)
    write(b_send)

for j in range (0, scaled_width*scaled_height):
    element = []
    for z in range(3):
        e = int(SerialObj.read().hex(), 16)
        print(e)
        # time.sleep(1)
        element.append(e)
    imgdata_edited.append(element)
 
img_pyver = []
for k in range(len(flatten_imgdata_scaled)):
    pix = []
    for l in range(3):
        edited_val = flatten_imgdata_scaled[k][l] * 2
        if edited_val >= 255:
            edited_val = 255
        pix.append(edited_val)
    img_pyver.append(pix)

imgdata_final_pyver = rowparser(img_pyver, 8)
imgdata_final = rowparser(imgdata_edited, 8)

plt.subplot(1,3,1)
plt.imshow(imgdata_lokal)
plt.axis("on")
plt.title("Original Image")

plt.subplot(1,3,2)
plt.imshow(imgdata_final_pyver)
plt.axis("on")
plt.title("Python Processed Version")

plt.subplot(1,3,3)
plt.imshow(imgdata_final)
plt.axis("on")
plt.title("FPGA Processed Version")

plt.show()

# Verification Data
if con_verify == True:
    # print()
    # print("=== VERIFICATION ===")
    # print("image data lokal")
    # for element in imgdata_lokal:
    #     print(element)
    print()
    print("=== VERIFICATION ===")
    print("image data lokal")
    for element in flatten_imgdata_scaled:
        print(element)
#     # print("parsed data")
#     # for element in imgdata_final:
#     #     print(element)
