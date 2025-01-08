# LIBRARIES
from PIL import Image
import numpy as np

# Buka gambar dan konversi ke mode RGB
image = Image.open("PC-Side\Test Codes\Creepy.png").convert("RGB")

# Dapatkan ukuran gambar
width, height = image.size

# Buat matriks untuk menyimpan nilai RGB
# pixel_matrix = np.zeros((height, width, 3), dtype=int)
# print(pixel_matrix)

arko =  [] # empty list

# Iterasi setiap piksel menggunakan for loop
for y in range(height):
    for x in range(width):
        r, g, b = image.getpixel((x, y))  # Mendapatkan nilai RGB
        bin_r = format(int(r), '08b')
        bin_g = format(int(g), '08b')
        bin_b = format(int(b), '08b')
        rgb_concat = bin_r + bin_g + bin_b
        print(rgb_concat)
        arko.append(rgb_concat)
        
print(arko)
        # pixel_matrix[y, x] = [r, g, b]    # Menyimpan nilai RGB ke matrik
# # pixel_matrix sekarang berisi matriks RGB dari gambar
# print(pixel_matrix)

