#!/bin/bash
#     ___       _                    _              
#    / _ \  ___| |_ __ _ _ __  _   _| |_ ___        Soham Ray [Octanyte]
#   | | | |/ __| __/ _` | '_ \| | | | __/ _ \       https://octanyte.com
#   | |_| | (__| || (_| | | | | |_| | ||  __/       https://github.com/Octanyte
#    \___/ \___|\__\__,_|_| |_|\__, |\__\___|       https://gitlab.com/Octanyte
#                              |___/                
#
# Description:      This script installs some apps I use on my Ubuntu-Servers without any user interaction.

####################################################################################################

# Update Package-list & Upgrade Packages.
sudo apt update && sudo apt upgrade -y

# Install Official-Repo Apps.
sudo apt install -y htop neofetch vim fish timeshift

# Install Third-Party Apps / Plugins.
# SpaceVim.
curl -sLf https://spacevim.org/install.sh | bash
# Oh-My-Fish.
curl -L https://get.oh-my.fish | fish

# Clean orphan packages.
sudo apt autoremove

# Update Package-list & Upgrade Packages again.
sudo apt update && sudo apt upgrade -y

########################################### END OF SCRIPT ##########################################