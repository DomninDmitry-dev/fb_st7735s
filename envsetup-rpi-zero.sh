#!/bin/bash

export MODNAME=st7735s
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export KERNELDIR=${HOME}/raspberrypi/rpi-v4.19.102
export ADDR_BOARD=root@10.42.0.40
export MODULEDIR=/lib/modules/4.19.102+/kernel/drivers/iio
export DTSDIR=$PWD/dtsi-rpi-zero
export DTBDIR=/boot/overlays

echo -e "\t MODNAME \t = ${MODNAME}"
echo -e "\t ARCH \t\t = ${ARCH}"
echo -e "\t CROSS_COMPILE \t = ${CROSS_COMPILE}"
echo -e "\t BUILD_KERNEL \t = ${KERNELDIR}"
echo -e "\t IP_BOARD \t = ${ADDR_BOARD}"
echo -e "\t MODULE_DIR \t = ${MODULEDIR}"
echo -e "\t DTS_DIR \t = ${DTSDIR}"
echo -e "\t DTB_DIR \t = ${DTBDIR}"

