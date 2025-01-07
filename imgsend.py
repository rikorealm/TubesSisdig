# Python code transmits a byte to Arduino /Microcontroller
import pytz
from datetime import datetime
import time
import serial

import serial.tools.list_ports
ports = serial.tools.list_ports.comports()

for port, desc, hwid in sorted(ports):
        print("{}: {} [{}]".format(port, desc, hwid))
# /Get avail ports then select port


SerialObj = serial.Serial('COM17') # COMxx  format on Windows
                  # ttyUSBx format on Linux
SerialObj.baudrate = 9600  # set Baud rate to 9600
SerialObj.bytesize = 8   # Number of data bits = 8
SerialObj.parity  ='N'   # No parity
SerialObj.stopbits = 1   # Number of Stop bits = 1
# time.sleep(3)
timezone = pytz.timezone('Asia/Jakarta')
curr_dt = datetime.now(timezone)
SerialObj.write(format(curr_dt.second,"x").encode("utf-8"))

# for i in range(0, 9):
#     time.g
#     SerialObj.write(format(i,"x").encode("utf-8"))
#     # print(b"1")
#     # print(i.to_bytes(8))
#     time.sleep(1)
# while True:
    # print(int(SerialObj.read().hex(), 16))

#     time.sleep(1)
# SerialObj.close()      # Close the port