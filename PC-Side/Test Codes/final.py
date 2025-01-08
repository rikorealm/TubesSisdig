# =================================================================
#   _      _ _                    _           
#  | |    (_) |                  (_)          
#  | |     _| |__  _ __ __ _ _ __ _  ___  ___ 
#  | |    | | '_ \| '__/ _` | '__| |/ _ \/ __|
#  | |____| | |_) | | | (_| | |  | |  __/\__ \
#  |______|_|_.__/|_|  \__,_|_|  |_|\___||___/
# =================================================================
# Image Input
from PIL import Image
import numpy as np
# Sending UART
import time
import serial
import serial.tools.list_ports
ports = serial.tools.list_ports.comports()

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

# Buka gambar dan konversi ke mode RG
print("Presets")
print("PC-Side\Test Codes\Creepy.png")
image_path = str(input("Input Image Path = "))
image = Image.open(image_path).convert("RGB")

# Dapatkan ukuran gambar
width, height = image.size

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
print(imgdata_lokal)

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
portar = []
for port, desc, hwid in sorted(ports):
        print("{}: {} [{}]".format(port, desc, hwid))
        portar.append(port)

print()
for number, letter in enumerate(portar):
    print(number+1, letter)
# /Get avail ports then select port

serpick = int(input("Choice = "))
SerialObj = serial.Serial(portar[serpick-1])
                                    # ttyUSBx format on Linux
SerialObj.baudrate = 9600           # set Baud rate to 9600
SerialObj.bytesize = 8              # Number of data bits = 8
SerialObj.parity  ='N'              # No parity
SerialObj.stopbits = 1              # Number of Stop bits = 1

SerialObj.read()

# UART COMMUNICATION
# Send Width and Height
SerialObj.write(width)
SerialObj.write(height)

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
