#!/bin/bash -e

# parse commandline options
while [ ! -z "$1" ] ; do
        case $1 in
            --clean)
                echo "Clean module sources"
                make clean
		rm -f ${DTSDIR}/${MODNAME}.dtbo
                ;;
            --module)
                echo "Build module"
                make
                ;;
            --dtbo)
                echo "Compile dtbo"
		${KERNELDIR}/scripts/dtc/dtc -I dts -O dtb ${DTC_FLAGS} \
			-o ${DTSDIR}/${MODNAME}.dtbo \
			${DTSDIR}/${MODNAME}.dtsi
                ;;
            --copymod)
                echo "Copy module to board"
                scp ${MODNAME}.ko ${ADDR_BOARD}:${MODULEDIR}
                ;;
            --copydtbo)
                echo "Copy overlay to board"
		scp ${DTSDIR}/${MODNAME}.dtbo \
			${ADDR_BOARD}:${DTBDIR}/${MODNAME}.dtbo
                ;;
            --copysshid)
                echo "Copy ssh id to board"
		ssh-copy-id -i ~/.ssh/id_rsa.pub ${ADDR_BOARD}
                ;;
        esac
        shift
done

echo "Done!"

