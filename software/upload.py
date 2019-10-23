
# This script is a python interface to the great AVR bootloader called
#
#  Megaload ( http://www.microsyl.com/index.php/2010/03/30/megaload/ )
#
# The protocol was reverse engineered to work corectly with ATMEGA128 chip
# with BOOT size set to 512 words
#komunikacja na UART1, baud 38400
# For more information visit original Megaload project site
# python -m pip install pyserial bincopy
# author: mb1988
# date: 19 Feb 2019

import bincopy
import serial
import argparse

def flash_firmware(port, hexfile, send_reset):

    print("Opening port {}...".format(port))
    ser = serial.Serial(port, baudrate=38400, timeout=1)  # open serial port

    print("Loading file {}...".format(hexfile))
    firmware = bincopy.BinFile(hexfile)

    # If MCU currently is in APP it switches to BOOT mode after receiving ''RESET'' on uart
    if send_reset == True:
        print("Sending RESET...")
        ser.write(b''RESET'')

    print("Waiting for MCU...")
    while True:
        r = ser.read(1)
        if r == b''>'':
            break

    ser.write(b''<'')

    # Received header containing information about flash size, boot size etc
    # Ignore this information 
    header = ser.read(6)

    for page in firmware.segments.chunks(256):

        page_num = page.address >> 8
        pal = (page_num & 0xff)
        pah = (page_num >> 8) & 0xff

        # Add 0xff padding to fill the whole 256 page
        if len(page.data) == 256:
            data = page.data
        else:
            data = page.data + b''xff''*(256 - len(page.data))

        # Send page number
        ser.write(pah.to_bytes(1, byteorder=''big''))
        ser.write(pal.to_bytes(1, byteorder=''big''))

        # Calculate page data checksum
        checksum = 0
        for b in data:  
            checksum += int(b)

        # Send data and checksumm
        ser.write(data)
        ser.write((checksum % 256).to_bytes(1, byteorder=''big''))

        # Wait for the result
        res = ser.read(1)
        if res == b''!'':
            print(''Page #{} -> success''.format(page_num))
        else:
            print(''Page #{} -> FAILED''.format(page_num))
            exit(-1)

    # End the transmission by sending  0xff, 0xff
    ser.write(b''xffxff'')
    ser.close()             

    print("Flashing completed!")

def main():
    argument_parser = argparse.ArgumentParser(description=''Python megaload script'')

    argument_parser.add_argument(''--port'', ''-p'',
                                type=str,
                                required=True,
                                dest=''port'',
                                help=''COM port used for firmware update'')

    argument_parser.add_argument(''--file'', ''-f'',
                                type=str,
                                required=True,
                                dest=''file'',
                                help=''Intel hex firmware file'')
    
    argument_parser.add_argument(''--reset'',
                                required=False,
                                default=False,
                                action=''store_true'',
                                dest=''reset'',
                                help=''Initialize upload by sending ''RESET''. Use this option when MCU is in APP and do not use when in BOOT'')

    args = argument_parser.parse_args()

    flash_firmware(port=args.port, hexfile=args.file, send_reset=args.reset)
    
if __name__ == "__main__":
    main()