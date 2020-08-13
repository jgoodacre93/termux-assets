#!/bin/sh

pkg i proot

wget https://eu.mirror.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz -O arch.tar.gz

mkdir arch-fs
mv arch.tar.gz arch-fs
cd arch-fs
tar xf arch.tar.gz
rm arch.tar.gz
