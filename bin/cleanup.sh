#!/bin/bash
# This script reverses the changes made by linux.sh.

# Remove the .nanorc file
rm -f ~/.nanorc

# Remove the line 'source ~/.dotfiles/etc/bashrc_custom' from .bashrc
# We use sed to delete this line
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove the .TRASH directory
rm -rf ~/.TRASH
