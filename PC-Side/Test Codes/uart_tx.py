# import serial.tools.list_ports as port_list
# ports = list(port_list.comports())
# for p in ports:
#     print (p)

# ---------------------------------------------------------------------------------------

# import serial
# import time

# serialPort = serial.Serial(
#     port="COM4", baudrate=9600, bytesize=8, timeout=2, stopbits=serial.STOPBITS_ONE
# )
# serialString = ""  # Used to hold data coming over UART
# while 1:
#     # Read data out of the buffer until a carraige return / new line is found
#     serialString = serialPort.readline()

#     # Print the contents of the serial data
#     try:
#         print(serialString.decode("Ascii"))
#     except:
#         pass

# ---------------------------------------------------------------------------------------

# Python code transmits a byte to Arduino /Microcontroller
import time
import serial

import serial.tools.list_ports
ports = serial.tools.list_ports.comports()

for port, desc, hwid in sorted(ports):
        print("{}: {} [{}]".format(port, desc, hwid))
# /Get avail ports then select port


SerialObj = serial.Serial('/dev/cu.usbmodem101')
                                    # ttyUSBx format on Linux
SerialObj.baudrate = 9600           # set Baud rate to 9600
SerialObj.bytesize = 8              # Number of data bits = 8
SerialObj.parity  ='N'              # No parity
SerialObj.stopbits = 1              # Number of Stop bits = 1
time.sleep(3)
while True:
    SerialObj.write(b"1")
    break
SerialObj.close()
#     time.sleep(1)
# SerialObj.close()      # Close the port