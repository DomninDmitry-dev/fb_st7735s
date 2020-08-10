#!/bin/bash

export MODNAME=st7735s
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export KERNELDIR=${HOME}/Kernels/orange-pi-one-4.19.103
export ADDR_BOARD=root@192.168.0.120
export MODULEDIR=/lib/modules/4.19.103-sunxi/kernel/drivers/iio
export DTSDIR=$PWD/dtsi-opi-one
export DTBDIR=/boot/overlay-user

echo -e "\t MODNAME \t = ${MODNAME}"
echo -e "\t ARCH \t\t = ${ARCH}"
echo -e "\t CROSS_COMPILE \t = ${CROSS_COMPILE}"
echo -e "\t BUILD_KERNEL \t = ${KERNELDIR}"
echo -e "\t IP_BOARD \t = ${ADDR_BOARD}"
echo -e "\t MODULE_DIR \t = ${MODULEDIR}"
echo -e "\t DTS_DIR \t = ${DTSDIR}"
echo -e "\t DTB_DIR \t = ${DTBDIR}"

