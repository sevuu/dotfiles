#!/bin/bash
#
# a simple dmenu session script
#
###

DMENU='dmenu'
choice=$(echo -e "restart\nkill" | $DMENU)

case "$choice" in
	restart) killall polybar && polybar topbar1 &&sleep 0.3&& polybar topbar & ;;
	kill) killall polybar
esac
