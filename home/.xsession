#!/bin/bash
numlockx &                   # Turn on numlock. Honestly why would you leave it off.
dex -a -e awesome &          # Run our normal autostart stuff.

#Gnome keyring.
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec awesome                 # Now we're running awesome!

