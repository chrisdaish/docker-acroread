#!/bin/bash
groupmod -g $gid acroread
usermod -u $uid -g $gid acroread
exec su -ls "/bin/bash" -c "mkdir -p /home/acroread/.local/share; /usr/bin/acroread $ARGS $FILE" acroread
