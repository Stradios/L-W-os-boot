#!/bin/bash

# This script should be run with root privileges

# Set the BootNext option to the Windows Boot Manager
sudo efibootmgr --bootnext 0002

# Reboot the system
sudo reboot

