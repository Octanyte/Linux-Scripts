#!/bin/bash
#     ___       _                    _              
#    / _ \  ___| |_ __ _ _ __  _   _| |_ ___        Soham Ray [Octanyte]
#   | | | |/ __| __/ _` | '_ \| | | | __/ _ \       https://octanyte.com
#   | |_| | (__| || (_| | | | | |_| | ||  __/       https://github.com/Octanyte
#    \___/ \___|\__\__,_|_| |_|\__, |\__\___|       https://gitlab.com/Octanyte
#                              |___/                
#
# Description:      This script installs & configures Docker for the current user without any user interaction.

####################################################################################################

# Update Package-list & Upgrade Packages.
sudo apt update && sudo apt upgrade -y

# Add Docker's official GPG Key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Update the package database with the Docker packages from the newly added repo.
sudo apt update

# Install Docker.
sudo apt install -y docker-ce

# Show Docker service status.
sudo systemctl status docker

# Add current user to the "docker" group.
sudo usermod -aG docker ${USER}

# Clean orphan packages.
sudo apt autoremove

# Update Package-list & Upgrade Packages again.
sudo apt update && sudo apt upgrade -y

########################################### END OF SCRIPT ##########################################