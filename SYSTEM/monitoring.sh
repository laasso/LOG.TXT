#!/bin/bash

output_folder="informacion_sistema_$(date +'%Y%m%d_%H%M%S')"
mkdir "$output_folder"

lshw > "$output_folder/lshw_info.txt"
lscpu > "$output_folder/lscpu_info.txt"
lsusb -v -t> "$output_folder/lsusb_info.txt"
lspci > "$output_folder/lspci_info.txt"
free -h > "$output_folder/memory_info.txt"
df -h > "$output_folder/disk_space_info.txt"
uptime > "$output_folder/uptime_info.txt"
uname -a > "$output_folder/kernel_info.txt"
ifconfig > "$output_folder/network_info.txt"
ps aux > "$output_folder/process_info.txt"
sudo fdisk -l > "$output_folder/disks.txt"

echo "La información del sistema ha sido recopilada y guardada en la carpeta: $output_folder"
