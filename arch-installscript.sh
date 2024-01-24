#! /bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Not ran as sudo | Please run this script as sudo"
  exit 1
fi

read -p "Enter the target disk:" target_disk
echo -e "n\np\n1\n\n+1G\nt\n1\nw" | fdisk "$target_disk"
echo -e "n\n2\n\n\nw" | fdisk "$target_disk"
