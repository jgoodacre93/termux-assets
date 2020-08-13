#!/bin/sh

pkg i proot

wget http://dl-cdn.alpinelinux.org/alpine/v3.12/releases/aarch64/alpine-minirootfs-3.12.0-aarch64.tar.gz -O alpine.tar.gz

mkdir alpine-fs
mv alpine.tar.gz alpine-fs
cd alpine-fs
tar xf alpine.tar.gz
rm alpine.tar.gz
