#!/bin/bash -e

# parse commandline options
while [ ! -z "$1" ] ; do
        case $1 in
            --clean)
                echo "Clean module sources"
                make clean
		rm -f ${DTSDIR}/${MODNAME}.dtbo
                ;;
            --mod)
                echo "Build module"
                make
                echo "Add signing key"
		        ${KERNELDIR}/scripts/sign-file sha512 \
			        ${KERNELDIR}/certs/signing_key.pem \
			        ${KERNELDIR}/certs/signing_key.x509 ${MODNAME}.ko
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
			${ADDR_BOARD}:${DTBDIR}/${PREFIX}${MODNAME}.dtbo
                ;;
            --copysshid)
                echo "Copy ssh id to board"
		ssh-copy-id -i ~/.ssh/id_rsa.pub ${ADDR_BOARD}
                ;;
            --reboot)
                echo "Reboot the board"
		ssh ${ADDR_BOARD} 'reboot'
                ;;
        esac
        shift
done

echo "Done!"

