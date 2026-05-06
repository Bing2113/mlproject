#!/bin/bash
SWAPFILE=/var/swapfile
if [ ! -f $SWAPFILE ]; then
  fallocate -l 2G $SWAPFILE
  chmod 600 $SWAPFILE
  mkswap $SWAPFILE
  swapon $SWAPFILE
fi