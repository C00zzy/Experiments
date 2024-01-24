#! /bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Not ran as sudo | Please run this script as sudo"
  exit 1
fi

read -p "Enter the target disk: " target_disk

# Create GPT partition table
echo -e "g\nw" | gdisk "$target_disk"

# Create the EFI partition
echo -e "n\n1\n\n+512M\nef00\nw" | gdisk "$target_disk"

# Create the second partition
echo -e "n\n2\n\n\nw" | gdisk "$target_disk"
