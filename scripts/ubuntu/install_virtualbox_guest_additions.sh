#!/bin/bash -e

# Installing the virtualbox guest additions
apt-get -y install dkms

VBOX_ISO=VBoxGuestAdditions.iso
MOUNT_POINT=/mnt

mount -o loop $VBOX_ISO $MOUNT_POINT
sh $MOUNT_POINT/VBoxLinuxAdditions.run --nox11
umount $MOUNT_POINT
rm $VBOX_ISO

service vboxadd start
service vboxadd-service start

exit
