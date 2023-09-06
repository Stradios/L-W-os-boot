#!/bin/bash

# Copy the 'boot-windos' directory to '/usr/share/'
sudo cp -r boot-windos/ /usr/share/

# Copy the 'reboot-windows' directory to '/usr/share/icons/'
sudo cp -r reboot-windows.svg /usr/share/icons/

# Copy the 'reboot-to-windows.desktop' file to '~/.local/share/applications/'
sudo cp -r reboot-to-windows.desktop ~/.local/share/applications/

echo "Files copied successfully!"
