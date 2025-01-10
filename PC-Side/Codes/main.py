# =================================================================
#   _      _ _                    _           
#  | |    (_) |                  (_)          
#  | |     _| |__  _ __ __ _ _ __ _  ___  ___ 
#  | |    | | '_ \| '__/ _` | '__| |/ _ \/ __|
#  | |____| | |_) | | | (_| | |  | |  __/\__ \
#  |______|_|_.__/|_|  \__,_|_|  |_|\___||___/
# =================================================================
# Display
import os
# Image Input
from PIL import Image
import numpy as np
# Sending UART
import time
import serial
import serial.tools.list_ports
ports = serial.tools.list_ports.comports()

# Functions
def numberparser(number):
    number = str(number)
    numberlist = list(number)
    integer_numberlist = [int(numberlist) for numberlist in numberlist]
    print(integer_numberlist)

# =================================================================
#   _____                              _____                   _   
#  |_   _|                            |_   _|                 | |  
#    | |  _ __ ___   __ _  __ _  ___    | |  _ __  _ __  _   _| |_ 
#    | | | '_ ` _ \ / _` |/ _` |/ _ \   | | | '_ \| '_ \| | | | __|
#   _| |_| | | | | | (_| | (_| |  __/  _| |_| | | | |_) | |_| | |_ 
#  |_____|_| |_| |_|\__,_|\__, |\___| |_____|_| |_| .__/ \__,_|\__|
#                          __/ |                  | |              
#                         |___/                   |_|              
# =================================================================
while True: 
     os.system("cls")
     # Buka gambar dan konversi ke mode RG
     print("Presets")
     print("1. Creepy.png (5x5 pixels)")
     print("2. Memario.png (10x10 pixels)")
     print("3. car.png (4:3)")
     print("4. jamur.png (6:4)")
     print("5. stiv.png (4:6)")
     # image_path = str(input("Input Image Path = "))
     image_choice = int(input("Input Preset Number = "))
     image_path = ""
     if image_choice == 1:
          image_path = '\"PC-Side\Test Codes\Creepy.png\"'
          image = Image.open("PC-Side/Test Codes/Creepy.png").convert("RGB")
     elif image_choice == 2:
          image_path = '\"PC-Side\Test Codes\Memario.png\"'
          image = Image.open("PC-Side/Test Codes/Memario.png").convert("RGB")     
     elif image_choice == 3:
          image_path = '\"PC-Side\Test Codes\car.png\"'
          image = Image.open("PC-Side/Test Codes/car.png").convert("RGB")
     elif image_choice == 4:
          image_path = '\"PC-Side\Test Codes\jamur.png\"'
          image = Image.open("PC-Side/Test Codes/jamur.png").convert("RGB")
     elif image_choice == 5:
          image_path = '\"PC-Side\Test Codes\stiv.png\"'
          image = Image.open("PC-Side/Test Codes/stiv.png").convert("RGB")

     # image = Image.open(image_path).convert("RGB")

     # Dapatkan ukuran gambar
     width, height = image.size
     max_width = 100
     max_height = 100

     if not(0 < width <= max_width and 0 < height <= max_height):
          print("Error : width and height not compatible")
     else: 
          break
# Buat matriks untuk menyimpan nilai RGB
# pixel_matrix = np.zeros((height, width, 3), dtype=int)
# print(pixel_matrix)

imgdata_lokal = []

# Iterasi setiap piksel menggunakan for loop
for y in range(height):
    for x in range(width):
        r, g, b = image.getpixel((x, y))  # Mendapatkan nilai RGB
        bin_r = format(int(r), '08b')
        bin_g = format(int(g), '08b')
        bin_b = format(int(b), '08b')
        matrix_rwrgb = [x, y, bin_r, bin_g, bin_b]
        imgdata_lokal.append(matrix_rwrgb)

# membuktikan nilai data gambar
# print(imgdata_lokal)

# ==============================================================
#   __  __       _        _        ____         __  __          
#  |  \/  |     | |      (_)      |  _ \       / _|/ _|         
#  | \  / | __ _| |_ _ __ ___  __ | |_) |_   _| |_| |_ ___ _ __ 
#  | |\/| |/ _` | __| '__| \ \/ / |  _ <| | | |  _|  _/ _ \ '__|
#  | |  | | (_| | |_| |  | |>  <  | |_) | |_| | | | ||  __/ |   
#  |_|  |_|\__,_|\__|_|  |_/_/\_\ |____/ \__,_|_| |_| \___|_|   
# ==============================================================

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
SerialObj.baudrate = 9600           # set Baud rate to 9600
SerialObj.bytesize = 8              # Number of data bits = 8
SerialObj.parity  ='N'              # No parity
SerialObj.stopbits = 1              # Number of Stop bits = 1

SerialObj.read()

# UART COMMUNICATION
# Send Width and Height
parsed_width = numberparser(width)
parsed_height = numberparser(height)
for parsed_width in parsed_width:
     SerialObj.write(parsed_width)
for parsed_height in parsed_height:
     SerialObj.write(parsed_height)

# Send Image Data
for y in range(height):
    for x in range(width):
        r, g, b = image.getpixel((x, y))  # Mendapatkan nilai RGB
        bin_r = format(int(r), '08b')
        bin_g = format(int(g), '08b')
        bin_b = format(int(b), '08b')
        temp_datargb = [bin_r, bin_g, bin_b]
        for j in range(0,3):
            SerialObj.write(temp_datargb[j])
                
# CLose UART COMMS
SerialObj.close()
