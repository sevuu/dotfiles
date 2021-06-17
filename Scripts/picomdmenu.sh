#!/bin/bash
#
# a simple dmenu session script
#
###

DMENU='dmenu'
choice=$(echo -e "kill\nstart" | $DMENU)

case "$choice" in
  kill) killall picom & ;;
  start) picom -c & ;;
esac
