#!/bin/bash
#     ___       _                    _              
#    / _ \  ___| |_ __ _ _ __  _   _| |_ ___        Soham Ray [Octanyte]
#   | | | |/ __| __/ _` | '_ \| | | | __/ _ \       https://octanyte.com
#   | |_| | (__| || (_| | | | | |_| | ||  __/       https://github.com/Octanyte
#    \___/ \___|\__\__,_|_| |_|\__, |\__\___|       https://gitlab.com/Octanyte
#                              |___/                
#
# Description:      This script removes Snap & all of its leftovers from Ubuntu Server or Desktop.

####################################################################################################

# Update Package-list & Upgrade Packages.
sudo apt update && sudo apt upgrade -y

# List Snaps.
snap list

# Remove Snaps.
sudo snap remove

# Check if any Snaps are left.
snap list

# Unmount snap mount points.
sudo umount /var/snap

# Remove and purge the snapd package.
sudo apt purge snapd

# Remove any remaining directories.
rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd

# Clean orphan packages.
sudo apt autoremove

# Update Package-list & Upgrade Packages again.
sudo apt update && sudo apt upgrade -y

########################################### END OF SCRIPT ##########################################