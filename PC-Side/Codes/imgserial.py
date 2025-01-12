# Python code transmits a byte to Arduino /Microcontroller
import time
import serial

import serial.tools.list_ports
ports = serial.tools.list_ports.comports()

for port, desc, hwid in sorted(ports):
    print("{}: {} [{}]".format(port, desc, hwid))
# /Get avail ports then select port

SerialObj = serial.Serial('COM9') # COMxx  format on Windows
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
write(result)
write(format(0, "x").encode("utf-8"))
write(format(0, "x").encode("utf-8"))
write(format(3, "x").encode("utf-8"))
write(format(0, "x").encode("utf-8"))
write(result)
write(result)
write(format(0, "x").encode("utf-8"))
write(format(0, "x").encode("utf-8"))
write(format(1, "x").encode("utf-8"))
write(format(0, "x").encode("utf-8"))
write(result)
# write(bytes([0]))
write(bytes([145]))
write(bytes([129]))
write(bytes([158]))
# write(bytes([0]))
write(bytes([254]))
write(bytes([253]))
write(bytes([122]))

write(bytes([100]))
write(bytes([101]))
write(bytes([107]))

# write(bytes([201]))
# write(bytes([202]))
# write(bytes([203]))
# write(format(106, "x").encode("utf-8"))
# write(format(100, "x").encode("utf-8"))
# write(format(15, "x").encode("utf-8"))

SerialObj.close()      # Close the port