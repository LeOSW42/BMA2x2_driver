obj-m += bma2x2.o
obj-m += bstclass.o

KERNEL_SRC = /dev/null

all:
	make -C $(KERNEL_SRC) M=$(PWD) modules

modules_install:
	make -C $(KERNEL_SRC) M=$(PWD) modules_install

clean:
	make -C $(KERNEL_SRC) M=$(PWD) clean

