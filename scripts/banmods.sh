#!/bin/bash

# List of mod ids to ban
BANNED_MODS=(
  "xaerosminimap"
  "meteorclient" 
)

# Loop through connected players
for player in $(mc status players); do

  # Get list of player's mods
  mods=$(mc info $player mods)

  # Loop through banned mods
  for mod in "${BANNED_MODS[@]}"; do
    
    # Check if player has banned mod
    if [[ $mods == *"$mod"* ]]; then
      
      # Ban player
      mc ban $player "Using banned mod: $mod"
      
      # Log ban
      echo "$(date) - Banned $player for using $mod" >> bans.log
      
    fi
    
  done
  
done
