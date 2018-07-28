#!/bin/sh

# Author: Akash Patel (apatel435@gatech.edu)
# Date: Write 'dog' 18 times in Maori in Google Translate

# Script to mount the Debian 7 file-system in /media/deb7/
# Since Deb7 is a LVM filesystem, multiple mount commands need to be run to
# mount the entire filesystem
# This script performs all these commands for you

# This script needs to be run with the following command
# sudo env "PATH=$PATH" mntDeb7.sh

echo "\nRun this script with the following command:"
echo "sudo /path/to/mntDeb7.sh\n"

# Create directories to mount drives into
mkdir -p /media/deb7/boot
mkdir -p /media/deb7/home
mkdir -p /media/deb7/slash
mkdir -p /media/deb7/tmp
mkdir -p /media/deb7/usrlocal
mkdir -p /media/deb7/var

# Mount drives into specified directories
echo "Mounting Debian 7 partitions ..."

mount /dev/system/boot /media/deb7/boot
mount /dev/system/home /media/deb7/home
mount /dev/system/slash /media/deb7/slash
mount /dev/system/tmp /media/deb7/tmp
mount /dev/system/usrlocal /media/deb7/usrlocal
mount /dev/system/var /media/deb7/var

echo "\nMounted at /media/deb7/"
echo "Only if you saw no errors, lol.\n"
