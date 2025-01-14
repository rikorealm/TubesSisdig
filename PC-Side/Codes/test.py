import serial

SerialObj = serial.Serial('COM18') # COMxx  format on Windows
SerialObj.baudrate = 115200  # set Baud rate to 9600
SerialObj.bytesize = 8   # Number of data bits = 8
SerialObj.parity  ='N'   # No parity
SerialObj.stopbits = 1   # Number of Stop bits = 1

k = 1
while True:
    p = int(SerialObj.read().hex(), 16)
    print(f"{k} : {p}")
    k+=1

SerialObj.close()