#!/bin/bash

export MODNAME=st7735s
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export KERNELDIR=${HOME}/Kernels/orange-pi-zero-plus-5.3.13_x64
export ADDR_BOARD=root@192.168.0.168
export MODULEDIR=/lib/modules/5.3.13-sunxi64/kernel/drivers/iio
export DTSDIR=$PWD/dtsi-zero
export DTC_FLAGS='--symbols'
export DTBDIR=/boot/dts/allwinner/overlay/sun50i-h5-${MODNAME}

echo -e "\t MODNAME \t = ${MODNAME}"
echo -e "\t ARCH \t\t = ${ARCH}"
echo -e "\t CROSS_COMPILE \t = ${CROSS_COMPILE}"
echo -e "\t BUILD_KERNEL \t = ${KERNELDIR}"
echo -e "\t IP_BOARD \t = ${ADDR_BOARD}"
echo -e "\t MODULE_DIR \t = ${MODULEDIR}"
echo -e "\t DTS_DIR \t = ${DTSDIR}"
echo -e "\t DTB_DIR \t = ${DTBDIR}"

