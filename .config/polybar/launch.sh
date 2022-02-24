#!/bin/bash

killall -9 polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITOR=DisplayPort-0 polybar main &
MONITOR=DVI-D-0 polybar second &
