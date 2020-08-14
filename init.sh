#!/bin/sh

PREFIX="/data/data/com.termux/files"

# change_motd() {
#   rm -f ${PREFIX}/usr/etc/motd

#   printf "%s\n" "
# " > ${PREFIX}/usr/etc/motd.sh
# }

change_nameservers() {
  printf "nameserver 192.168.1.201\nnameserver 9.9.9.10\n" \
    >${PREFIX}/usr/etc/resolv.conf
}

install_packages() {
  pkg install zsh proot
}

# change_motd
change_nameservers
install_packages
