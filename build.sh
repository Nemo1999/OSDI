# compile
aarch64-linux-gnu-gcc -mcpu=cortex-a53 -g -c a.S

# convert obj to elf
aarch64-linux-gnu-ld -T linker.ld -o kernel8.elf a.o

# elf to kernel image

aarch64-linux-gnu-objcopy -O binary kernel8.elf kernel8.img
