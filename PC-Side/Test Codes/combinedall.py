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

# Iterasi setiap piksel menggunakan for loop
imgdata_lokal = []

for y in range(height):
    for x in range(width):
        r, g, b = image.getpixel((x, y))  # Mendapatkan nilai RGB
        bin_r = format(int(r), '08b')
        bin_g = format(int(g), '08b')
        bin_b = format(int(b), '08b')
        matrix_rwrgb = [bin_r, bin_g, bin_b]
        imgdata_lokal.append(matrix_rwrgb)


# imgdata_lokal = [i for i in range (0,643)]
batasdatadikirim = 640
proses = "Not Done"
stop = 0
indeks_now = 0
jumlahdikirim = 0
jumlahudahdikirim = 0
datatampung_fpga = []
datahasil = []


while True:
    if jumlahdikirim >= batasdatadikirim or jumlahdikirim >= (len(imgdata_lokal) - jumlahudahdikirim):
        stop = 1
        jumlahudahdikirim += jumlahdikirim
        jumlahdikirim = 0    
    if stop == 0:
        data_dikirim = imgdata_lokal[indeks_now]
        datatampung_fpga.append(data_dikirim) # Serial Obj
        indeks_now += 1
        jumlahdikirim += 1
    else:
        datahasil.append(datatampung_fpga)
        datatampung_fpga = []
        stop = 0    
    if jumlahudahdikirim >= len(imgdata_lokal):
        proses = "Done"
        break

if proses == "Done":
    # Flatten Array
    def flatten(matrix):
        flat_list = []
        for element in matrix:
            for row in element:
                for column in row:
                    flat_list.append(column)
        return flat_list
    # PARSER BASED ON ROW
    flatten_datahasil = flatten(datahasil)

    temp = []
    parseddata = []

    sudah = 0
    for i in range (len(flatten_datahasil)):
        temp.append(flatten_datahasil[i])
        sudah += 1
        if sudah % (width*3) == 0 and i != 0:
            parseddata.append(temp)
            temp = []
    print(parseddata)

    cmd = input()
    i = 0
    while True:
        if i >= len(parseddata):
            i = 0
        if cmd == "":
            print(parseddata[i])
            i += 1
        else:
            break
        
        cmd = input()
