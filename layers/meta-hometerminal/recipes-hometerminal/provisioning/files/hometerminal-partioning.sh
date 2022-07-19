#!/bin/bash
helpFunction()
{
    echo ""
    echo "Usage: $0 -a startData"
    echo -e "\t-a Start location of the data partition"
    exit 1 # Exit script after printing help
}

while getopts "a" opt
do
    case "$opt" in
        a ) startData="$OPTARG" ;;
        ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
    esac
done

#Print helpFunction in case parameters list is empty
if [ -z "$startData" ]
then
    echo "Not all parameters have been filled out";
    helpFunction
fi

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