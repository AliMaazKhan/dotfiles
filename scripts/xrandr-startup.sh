#!/bin/bash
xrandr --newmode "1366x768_60.00" 85.50  1366 1436 1579 1792  768 771 774 798 -hsync +vsync
xrandr --addmode VGA-1 "1366x768_60.00"
xrandr --output VGA-1 --mode "1366x768_60.00"

