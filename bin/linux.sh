#!/bin/bash
# This script sets up the Linux environment.

# Redirect all echo outputs to linuxsetup.log in append mode
# We'll use >> for append as we add multiple echo statements.

# Check if the system is Linux
if [ "$(uname)" != "Linux" ]; then
    echo "ERROR: This system is not Linux." >> linuxsetup.log
    exit
fi

# Create the .TRASH directory if it doesn't exist
mkdir -p ~/.TRASH

# If .nanorc exists in the home directory, rename it and log the change
if [ -f ~/.nanorc ]; then
    mv ~/.nanorc ~/.bup_nanorc
    echo "Renamed existing .nanorc to .bup_nanorc" >> linuxsetup.log
fi

# Overwrite the user's .nanorc with the contents of etc/nanorc
cat ~/.dotfiles/etc/nanorc > ~/.nanorc

# Add the source line to the end of ~/.bashrc if not already present
# Check if it's already there:
grep -qxF "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc || echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
