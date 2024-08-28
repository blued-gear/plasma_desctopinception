#!/bin/bash

DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

SHARE_CLIPBOARD=0

if [[ $SHARE_CLIPBOARD -eq 1 ]]; then
"$DIR/clipboard-sync" &
fi

export DBUS_SESSION_BUS_ADDRESS=$(dbus-daemon --session --fork --print-address)
if [[ $SHARE_CLIPBOARD -eq 1 ]]; then
kwin_wayland plasmashell "$DIR/clipboard-sync"
else
kwin_wayland plasmashell
fi

if [[ $SHARE_CLIPBOARD -eq 1 ]]; then
kill %1
fi
