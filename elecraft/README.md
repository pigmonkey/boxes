# Elecraft

Provides a barebones Ubuntu 18.04 LTS machine for managing Elecraft radios. 

On the host, grab the VendorId and ProductId strings for the USB:

$ vboxmanage list usbhost

UUID:               44102e7c-7361-45ca-83e5-e295c294219a
VendorId:           0x0403 (0403)
ProductId:          0x6001 (6001)
Revision:           6.0 (0600)
Port:               1
USB version/speed:  2/Full
Manufacturer:       FTDI
Product:            USB Serial Converter
SerialNumber:       FTFVLQRR
Address:            sysfs:/sys/devices/pci0000:00/0000:00:14.0/usb1/1-2/1-2.4/1-2.4.2//device:/dev/vboxusb/001/051
Current State:      Available
 
then edit the Vagrantfile and change the appropriate vb.customize fields:

    vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'ESP', '--vendorid', '0x0403', '--productid', '0x6001']

