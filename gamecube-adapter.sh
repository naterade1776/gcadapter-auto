#!/usr/bin/bash
echo "Creating rules.d file....\n"
touch /etc/udev/rules.d/51-gcadapter.rules
echo "Editing rules.d file....\n"
echo SUBSYSTEM==\"usb\", ENV{DEVTYPE}==\"usb_device\", ATTRS{idVendor}==\"057e\", ATTRS{idProduct}==\"0337\", MODE=\"0666\" >> /etc/udev/rules.d/gcadapter.rules
echo "Done. Please restart or run [ sudo udevadm control --reload-rules ].""
