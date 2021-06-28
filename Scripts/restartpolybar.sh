#!/bin/bash

DMENU='dmenu'
choice=$(echo -e "restart\nkill" | $DMENU -p "Polybar")

case "$choice" in
	restart) killall polybar && polybar topbar1 && sleep 1 && polybar topbar & ;;
	kill) killall polybar
esac
