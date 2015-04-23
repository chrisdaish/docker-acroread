#!/bin/bash
groupmod -g $gid acroread
usermod -u $uid -g $gid acroread

if [ -d /home/acroread/.adobe ]; then
  chown -R acroread:acroread /home/acroread/.adobe
fi

exec su -ls "/bin/bash" -c "mkdir -p /home/acroread/.local/share; /usr/bin/acroread '$ARGS' '$FILE'" acroread
