#!/bin/bash

BRIGHTNESS=$(ddcutil getvcp 10 | grep -oP 'current value =\s*\K\d+')
echo " $BRIGHTNESS %"
