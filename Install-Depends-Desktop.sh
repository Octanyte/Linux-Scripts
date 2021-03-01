#!/bin/bash
#     ___       _                    _              
#    / _ \  ___| |_ __ _ _ __  _   _| |_ ___        Soham Ray [Octanyte]
#   | | | |/ __| __/ _` | '_ \| | | | __/ _ \       https://octanyte.com
#   | |_| | (__| || (_| | | | | |_| | ||  __/       https://github.com/Octanyte
#    \___/ \___|\__\__,_|_| |_|\__, |\__\___|       https://gitlab.com/Octanyte
#                              |___/                
#
# Description:      This script installs some essential dependencies needed for installing other apps & development tools.

####################################################################################################

# Update Package-list & Upgrade Packages.
sudo apt update && sudo apt upgrade -y

# Install dependencies.
sudo apt install -y git curl wget
sudo apt install -y apt-transport-https ca-certificates gnupg-agent software-properties-common
sudo apt install -y python3-pip nodejs npm

# Clean orphan packages.
sudo apt autoremove

# Update Package-list & Upgrade Packages again.
sudo apt update && sudo apt upgrade -y

########################################### END OF SCRIPT ##########################################