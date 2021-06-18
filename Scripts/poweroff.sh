#!/bin/bash
#
# a simple dmenu session script
#
###

DMENU='dmenu'
choice=$(echo -e "logout\nshutdown\nreboot" | $DMENU)

case "$choice" in
  logout) bspc quit & ;;
  shutdown) sudo shutdown -h now & ;;
  reboot) sudo shutdown -r now & ;;
esac
