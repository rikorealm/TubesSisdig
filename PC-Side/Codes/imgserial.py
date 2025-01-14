# Python code transmits a byte to Arduino /Microcontroller
import time
import serial

import serial.tools.list_ports
ports = serial.tools.list_ports.comports()

for port, desc, hwid in sorted(ports):
    print("{}: {} [{}]".format(port, desc, hwid))
# /Get avail ports then select port

SerialObj = serial.Serial('COM18') # COMxx  format on Windows
SerialObj.baudrate = 115200  # set Baud rate to 9600
SerialObj.bytesize = 8   # Number of data bits = 8
SerialObj.parity  ='N'   # No parity
SerialObj.stopbits = 1   # Number of Stop bits = 1

width = 139
height = 125

def write(data):    
    SerialObj.write(data)

# while True:
#     processing_state = int(SerialObj.read().hex(), 16)
#     print(processing_state)
#     if (processing_state == 0):
#         write(bytes('ÿ', "utf-8"))
#         # break
#         # write('ÿ'.encode("utf-8"))
#         # write(format(6, "x").encode("utf-8"))
#         k = int(input(">> "))
#         if (k == -1):
#             break
#         else:
#             write(format(k, "x").encode("utf-8"))
        # for w in str(width):
        #     write(format(int(w), "x").encode("utf-8"))
        #     print(int(w))
        # write(bytes('ÿ', "utf-8"))
        # write(bytes('ÿ', "utf-8"))
        # for h in str(height):
        #     write(format(int(h), "x").encode("utf-8"))
        #     print(int(h))
        # write(bytes('ÿ', "utf-8"))

# write(bytes('ÿ', "utf-8"))
a = 255  # Decimal 255
result = bytes([a])

# for i in range (4):
#     k = int(input(">> "))
#     if (k == -1):
#         break
#     else:

#Rules W > H
# write(result)
# write(format(0, "x").encode("utf-8"))
# write(format(0, "x").encode("utf-8"))
# write(format(3, "x").encode("utf-8"))
# write(format(0, "x").encode("utf-8"))
# write(result)
# write(result)
# write(format(0, "x").encode("utf-8"))
# write(format(0, "x").encode("utf-8"))
# write(format(1, "x").encode("utf-8"))
# write(format(0, "x").encode("utf-8"))
# write(result)
# write(bytes([0]))
img = []
temp_rgb = []

# write(bytes([166]))
# write(bytes([129]))
# write(bytes([157]))
# for i in range(3):
# # while True:
#     processing_state = int(SerialObj.read().hex(), 16)
#     print(processing_state)
#     # time.sleep(1)
#     temp_rgb.append(processing_state)

# img.append(temp_rgb)

# if len(temp_rgb) == 3:
# temp_rgb = []
# write(bytes([236]))
# write(bytes([121]))
# write(bytes([132]))
# # for i in range(3):
# while True:
#     processing_state2 = int(SerialObj.read().hex(), 16)
#     print(processing_state2)
#     temp_rgb.append(processing_state2)

# img.append(temp_rgb)
# print(img)

# write(bytes([0]))
# write(bytes([254]))
# write(bytes([253]))
# write(bytes([122]))

for i in range(64):
    print((23+i)*2)
    print((34+i)*2)
    print((12+i)*2)
    write(bytes([23+i]))
    write(bytes([34+i]))
    write(bytes([12+i]))
    print()



# id : 0
# 46 , 
# 68 , 
# 24 , 

# id : 1
# 48 
# 70
# 26

# id : 2
# 50
# 72
# 28

# id : 3
# 52
# 74
# 30

# id : 4
# 54
# 76
# 32 

# id : 62
# 23+62 = 85 , 170
# 34+62 = 96 , 192
# 12+62 = 74 , 148

# id : 63
# 23+63 = 87 , 172
# 34+63 = 97 , 194
# 12+63 = 75 , 150

# 132
# 166
# 110

# j = 0
# while True:
# # for i in range(192):
#     processing_state = int(SerialObj.read().hex(), 16)
# #     # if i >= 192:
#     print(f"{j} : {processing_state}")
#     # time.sleep(1)
#     j+=1
#     if j == 192: break

# write(bytes([201]))
# write(bytes([202]))
# write(bytes([203]))
# write(format(106, "x").encode("utf-8"))
# write(format(100, "x").encode("utf-8"))
# write(format(15, "x").encode("utf-8"))

SerialObj.close()      # Close the port