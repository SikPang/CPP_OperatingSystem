#!/bin/bash
set -xue

sh build.sh

# QEMU 실행 파일 경로
QEMU=qemu-system-riscv32

# QEMU 실행
$QEMU -machine virt -bios default -nographic -serial stdio \
      -monitor telnet:127.0.0.1:1234,server,nowait --no-reboot \
	  -kernel kernel.elf
# telnet localhast 1234