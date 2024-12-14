# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.


# .dotfiles Repository

This repository contains configuration files and scripts to customize my Linux shell environment.

- **bin/linux.sh**: This script sets up the environment for Linux. It checks if the system is Linux, creates a `.TRASH` directory, backs up and replaces the `.nanorc` file, and adds a line to source the custom `bashrc_custom` file in `.bashrc`.

- **bin/cleanup.sh**: This script removes changes made by `linux.sh`. It deletes the `.nanorc` file, removes the source line from `.bashrc`, and deletes the `.TRASH` directory.

- **etc/bashrc_custom**: Contains environment variables, aliases, and functions to enhance the shell experience.

- **etc/nanorc**: Contains configurations for the nano text editor.

- **Makefile**: Has two targets: `clean` and `linux`. Running `make` will first run `clean` (the cleanup script) and then run `linux` (the setup script).

- **.gitignore**: Specifies files that should not be tracked by Git (e.g., .DS_Store, linuxsetup.log).

Running `make` will ensure that the environment is set up properly and configuration files are put in the correct place.




