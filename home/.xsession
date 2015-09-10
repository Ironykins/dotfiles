#!/bin/bash
gnome-settings-daemon &      # Themes and finnicky bits.
nm-applet &                  # Network manager for connections
synapse -s &                 # The best application launcher ever. Seriously.
skype &                      # Some microsoft spyware
gnome-power-manager &        # For the lappy tops
gnome-volume-manager &       # Automounting Goodness
eval `gnome-keyring-daemon`  # SSH/GPG agent. TODO: Find a better one.
exec awesome                 # Now we're running awesome!

