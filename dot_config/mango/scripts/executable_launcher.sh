#!/bin/sh

app=$(ls /usr/share/applications/*.desktop | xargs -I {} basename {} .desktop | fzf)
if [ -n "$app" ]; then
    setsid gtk-launch "$app" >/dev/null 2>&1 &
    sleep 0.01
fi
