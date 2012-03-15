# Script taken from Imoseyon and modified by BobZhome #

CPU_JOB_NUM=4
TOOLCHAIN=/home/bobzhome/android/android-toolchain-eabi/bin/
TOOLCHAIN_PREFIX=arm-eabi-


make -j$CPU_JOB_NUM ARCH=arm CROSS_COMPILE=$TOOLCHAIN/$TOOLCHAIN_PREFIX;


cp arch/arm/boot/zImage ../finished/;
cp drivers/net/tun.ko ../finished/;
cp drivers/net/wireless/bcm4329/bcm4329.ko ../finished/;
cp drivers/net/wireless/libra/librasdioif.ko ../finished/;
cp fs/cifs/cifs.ko ../finished/;

echo "COMPILING FINISHED!!!";
read;
make mrproper

