#!/bin/bash
if ! [ -x /usr/local/comp ]  ; then
wget http://mirrors.ustc.edu.cn/loongson/pmon/toolchain-pmon.tar.bz2 -c
tar jxvf toolchain-pmon.tar.bz2
mv usr/local/comp /usr/local/comp
#rm -rf usr  
fi

PATH=/usr/local/comp/mips-elf/gcc-2.95.3/bin:$PATH
cd zloader.2fnas
make cfg all tgt=ram
cp gzram ../gzram.2fnas
make cfg all tgt=rom
cp gzrom.bin ../pmon_2fnas.bin
