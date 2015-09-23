#!/bin/bash
#nm-applet &                  # Network manager for connections
#light-locker &             # Lockscreen!
#synapse -s &                 # The best application launcher ever. Seriously.
#gnome-power-manager &        # For the lappy tops
#gnome-volume-manager &       # Automounting Goodness
#~/.startup &                 # Spawn our specific startup programs.
#dex -a -e awesome -s ~/.config/autostart ;
gnome-settings-daemon &      # Themes and finnicky bits.
numlockx &                   # Turn on numlock. Honestly why would you leave it off.
dex -a -e awesome &          # Run our normal autostart stuff.

#Gnome keyring.
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec awesome                 # Now we're running awesome!

