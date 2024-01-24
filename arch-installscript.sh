#! /bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Not ran as sudo | Please run this script as sudo"
  exit 1
fi

read -p "Enter the target disk: " target_disk

# Create a new GPT partition table
parted -s "$target_disk" mklabel gpt

# Create the EFI partition
echo -e "n\n1\n\n+512M\nt\n1\n1\nw" | fdisk "$target_disk"

# Create the secondary partition
echo -e "n\n2\n\n\nw" | fdisk "$target_disk"
