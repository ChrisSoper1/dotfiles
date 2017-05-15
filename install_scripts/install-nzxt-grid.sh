#!/bin/bash

echo "Checking for NZXT Grid+ v2"
lsusb | grep 04d8:00df > /dev/null
CONNECTED=$?

if [ $CONNECTED -ne 0 ]; then
	echo "$(tput setaf 1)NZXT Grid+ v2 not found$(tput sgr0)"
	exit 1
else
	echo "NZXT Grid+ v2 found, continuing install"
fi

SERIAL=`udevadm info -a -p $(udevadm info -q path -n /dev/ttyACM0) | egrep "ATTRS{serial}==\"[0-9]{10}\"" | egrep -o '[0-9]{10}'`

if [ -z $SERIAL ]; then
	echo "$(tput setaf 1)Not able to query the NZXT Grid+ serial number$(tput sgr0)"
	exit 1
else
	echo "NZXT Grid+ v2 serial number: ${SERIAL}"
fi

echo "Installing udev rule to '/etc/udev/rules.d/'"


cat <<EOF > /etc/udev/rules.d/90-NZXT-Grid+_v2.rules
ACTION=="add", \
SUBSYSTEMS=="usb", \
ATTRS{product}=="MCP2200 USB Serial Port Emulator", \
ATTRS{serial}=="${SERIAL}", \
SUBSYSTEM=="tty", \
GROUP="staff" \
MODE="0660" \
SYMLINK+="GridPlus0"
EOF

UDEVSUCCESS=$?

if [ $UDEVSUCCESS -eq 0 ]; then
	echo "$(tput setaf 2)Installation of NZXT Grid+ device successfull$(tput sgr0)"
else
	echo "$(tput setaf 1)Failed to install NZXT Grid+ device$(tput sgr0)"
	exit 1
fi

echo ""
echo "Installing 'gridfan' control script"
echo ""

wget -q -O /usr/local/bin/gridfan https://raw.githubusercontent.com/CapitalF/gridfan/master/gridfan
chmod 755 /usr/local/bin/gridfan
chown root:root /usr/local/bin/gridfan
echo "$(tput setaf 2)Installation of 'gridfan' successfull, for more info run gridfan --help$(tput sgr0)"
