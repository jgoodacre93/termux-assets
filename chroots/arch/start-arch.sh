#!/bin/sh

unset LD_PRELOAD
__PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
proot -r ./arch-fs -0 -w / -b /dev -b /proc -b /sys /usr/bin/env -i HOME=/root PATH=$__PATH /bin/bash
