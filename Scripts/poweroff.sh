#!/bin/bash
#
# a simple dmenu session script
#
###

DMENU='dmenu'
choice=$(echo -e "logout\nshutdown\nreboot\nsuspend\nhibernate" | $DMENU)

case "$choice" in
  logout) bspc quit & ;;
  shutdown) sudo shutdown -h now & ;;
  reboot) sudo shutdown -r now & ;;
  suspend) sudo pm-suspend & ;;
  hibernate) sudo pm-hibernate & ;;
esac
