#!/bin/bash

# Increase max memory allocation 
sed -i 's/Xmx1G/Xmx4G/g' spigot.yml

# Reduce max build height to increase available memory 
sed -i 's/max-build-height=256/max-build-height=128/g' spigot.yml

# Disable animals from spawning 
sed -i 's/animals=true/animals=false/g' spigot.yml

# Reduce view distance to increase available memory
sed -i 's/view-distance=10/view-distance=6/g' spigot.yml 

# Reduce max players to increase available memory
sed -i 's/max-players=20/max-players=10/g' spigot.yml

# Disable the nether to free up memory
sed -i 's/allow-nether=true/allow-nether=false/g' server.properties

# Restart the server to apply changes
restart.sh
