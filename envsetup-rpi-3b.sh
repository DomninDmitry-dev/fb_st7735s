#!/bin/bash

export MODNAME=st7735s
export ARCH=arm
export CROSS_COMPILE=/home/dmitry/toolchains/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-
export KERNELDIR=${HOME}/qt-raspberrypi-3b/kernel-rpi/kernel_v5.4.61
export ADDR_BOARD=root@10.42.0.91
export MODULEDIR=/lib/modules/5.4.61-v7+/kernel/drivers/iio
export DTSDIR=$PWD/dtsi-rpi-3b
export DTBDIR=/boot/overlays

echo -e "\t MODNAME \t = ${MODNAME}"
echo -e "\t ARCH \t\t = ${ARCH}"
echo -e "\t CROSS_COMPILE \t = ${CROSS_COMPILE}"
echo -e "\t BUILD_KERNEL \t = ${KERNELDIR}"
echo -e "\t IP_BOARD \t = ${ADDR_BOARD}"
echo -e "\t MODULE_DIR \t = ${MODULEDIR}"
echo -e "\t DTS_DIR \t = ${DTSDIR}"
echo -e "\t DTB_DIR \t = ${DTBDIR}"

