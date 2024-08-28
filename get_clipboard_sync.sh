#!/bin/bash

# credits for the application:
# https://github.com/dnut/clipboard-sync

FILE='clipboard-sync_0.2.0-1.deb'
wget "https://github.com/dnut/deb/raw/master/generic/$FILE"
ar x $FILE data.tar.xz
tar -xf data.tar.xz  --strip-components 2 '*clipboard-sync'
rm -f $FILE data.tar.xz
