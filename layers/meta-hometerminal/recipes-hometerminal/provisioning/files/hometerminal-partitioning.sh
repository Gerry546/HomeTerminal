#!/bin/bash

# Retrieve the U-BOOT variable indicating whether or not the data partition is still ok
DATA=$(fw_printenv DATA_OK)

# If it has never been set assume it is broken and reformat the data partition
if [[ "${DATA}" == "DATA_OK=" ]]; then
	echo "The data partitions seems to be changed, reformating..."
	startData=$(fdisk -l | grep ^/dev/mmcblk0p4 |  awk -F" "  '{ print $2 }')
	echo "Partitioning data partition for first use"
	echo "WARNING, THIS WILL DELETE THE DATA PARTITION"
	
	echo "Unmounting data drive"
	umount /dev/mmcblk0p4
	
	(
	echo d # Delete the data partition
	echo   # Last partition (default)
	echo n # Create a new partition
	echo p # Make it a primary partition
	echo $startData # Ensure it starts just after slot B
	echo   # Go to the end (default)
	echo w # Write changes to disk
	) | fdisk /dev/mmcblk0
	
	echo "Done, remounting drive"
	mount /dev/mmcblk0p4 /data
	
	echo "Resizing file system"
	resize2fs /dev/mmcblk0p4

	# Set the environment variable to true
	fw_setenv DATA_OK TRUE
else
	echo "Partition table unchanged"
fi
	
