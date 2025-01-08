import cv2
from PIL import Image
import numpy as np
import os

def trunc(col : int, brightness : int, lim : int):
    newcol = col + brightness
    if newcol > lim:
        return lim
    elif newcol < 0:
        return 0
    else:
        return newcol

def basicalgo(arr, r, c, k):
    arr[r][c][0] = trunc(arr[r][c][0], k, 100)
    arr[r][c][1] = trunc(arr[r][c][1], k, 100)
    arr[r][c][2] = trunc(arr[r][c][2], k, 100)
    return arr

def brightness(arr, r, c, k):
    # In HLS
    weight = 0.95
    nw = arr[c][r][1] * (1+((k/100)*weight))
    if nw > 255:
        arr[c][r][1] = 255
    elif nw < 0:
        arr[c][r][1] = 0
    else:
        arr[c][r][1] = nw
    # trunc(arr[c][r][2], 0, 100)
    return arr


mode = int(input("Operation:\n1. Brightness\n2. Contrast\n\n>>>> "))

while mode != ".":
    os.system("cls")
    if mode == 1:
        k = ((int(input("Brightness value (0-100%): "))/100)*200)-100
    elif mode == 2:
        c = ((int(input("Contrast value (0-100%): "))/100)*510)-255
    elif mode == 3:
        c = ((int(input("Hue value (0-100%): "))/100)*510)-255
    elif mode == 4:
        c = ((int(input("Saturation value (0-100%): "))/100)*510)-255
    else:
        print("Wrong input")

    cimg = cv2.imread("Test3.jpg")
    cimg_hsl = cv2.cvtColor(cimg, cv2.COLOR_BGR2HLS)
    n_rgb = np.array(cimg)
    n_hsl = np.array(cimg_hsl)

    # print(n_hsl[0])

    # print(n)
    cv2.imshow("RGB IMAGE - BEFORE", n_rgb)
    # cv2.imshow("HSL IMAGE - BEFORE", n_hsl)
    cv2.waitKey()

    h, w, dim = cimg_hsl.shape

    for r in range(0, int(w)):
        for c in range(0, int(h)):
            # n = basicalgo(n, r, c, k)
            n_hsl = brightness(n_hsl, r, c, k)

    # print(n)
    # print(n_hsl[0])
    n_rgb = cv2.cvtColor(n_hsl, cv2.COLOR_HLS2BGR)
    cv2.imshow("RGB IMAGE - AFTER", n_rgb)
    # cv2.imshow("HSL IMAGE - AFTER", n_hsl)
    cv2.waitKey()
    cv2.destroyAllWindows()
