#!/bin/bash

# Increase the max file handles limit
echo 65536 | sudo tee /proc/sys/fs/file-max 
echo "fs.file-max = 65536" | sudo tee -a /etc/sysctl.conf

# Increase the max number of processes
echo "kernel.pid_max = 65536" | sudo tee -a /etc/sysctl.conf

# Increase the max number of threads
echo "kernel.threads-max = 2097152" | sudo tee -a /etc/sysctl.conf

# Increase the max socket buffer size 
echo "net.core.rmem_max = 16777216" | sudo tee -a /etc/sysctl.conf
echo "net.core.wmem_max = 16777216" | sudo tee -a /etc/sysctl.conf

# Increase the max number of open files 
echo "fs.nr_open = 1048576" | sudo tee -a /etc/sysctl.conf

# Increase the max number of processes 
echo "kernel.pid_max = 65536" | sudo tee -a /etc/sysctl.conf

# Increase the max number of threads
echo "kernel.threads-max = 2097152" | sudo tee -a /etc/sysctl.conf

# Increase the max socket buffer size 
echo "net.core.rmem_max = 16777216" | sudo tee -a /etc/sysctl.conf
echo "net.core.wmem_max = 16777216" | sudo tee -a /etc/sysctl.conf

# Increase the max number of open files 
echo "fs.nr_open = 1048576" | sudo tee -a /etc/sysctl.conf

# Apply the sysctl changes
sudo sysctl -p

# Increase the max number of open files for the Minecraft process
echo "minecraft soft nofile 65536" | sudo tee -a /etc/security/limits.conf 
echo "minecraft hard nofile 65536" | sudo tee -a /etc/security/limits.conf

# Restart the server for the changes to take effect
sudo systemctl restart minecraft
