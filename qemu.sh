#!/bin/bash
qemu-system-aarch64 -M raspi3b -kernel kernel8.img -display none -d in_asm -S -s &
gdb-multiarch kernel8.elf -x gdb_target_remote.txt
kill %1
