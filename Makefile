
ifneq ($(KERNELRELEASE),)

obj-m := ${MODNAME}.o

else

#CFLAGS_$(MODNAME_MOD).o := -DDEBUG

.PHONY: default clean

default: ${MODNAME}.c
	$(MAKE) -C $(KERNELDIR) M=$(CURDIR) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(CURDIR) clean

endif
