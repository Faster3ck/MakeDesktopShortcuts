#!/bin/bash

NAME=MakeDesktopShortcuts
SCRIPT=makedesktopshortcuts
DESKTOPFILE=makedesktopshortcuts.desktop

if [ "$(id -u)" != "0" ]
  then
    echo "This script must be run as root" 1>&2
    exit 1
  else
    echo "Press Enter to uninstall $NAME from your system"
    read
    rm -v "/usr/share/kde4/services/ServiceMenus/$DESKTOPFILE"
    rm -v "/usr/bin/$SCRIPT"
    echo "Uninstallation complete"
fi
