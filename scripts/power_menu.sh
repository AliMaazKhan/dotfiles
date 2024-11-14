#!/bin/bash
# Simple power menu script using wofi or rofi

choice=$(echo -e "Shutdown\nReboot\nSuspend\nHibernate" | wofi --dmenu --prompt "Power Menu")

case "$choice" in
  "Shutdown") systemctl poweroff ;;
  "Reboot") systemctl reboot ;;
  "Suspend") systemctl suspend ;;
  "Hibernate") systemctl hibernate ;;
esac

