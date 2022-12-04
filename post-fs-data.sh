#!/system/bin/sh
# Do not hardcode /magisk/modname/... ; Use $MODDIR/...
# This will make your script more compatible, even if Magisk changes its mount point in the future
MODDIR=${0%/*}
mount --bind $MODDIR/my_product/media/bootanimation/bootanimation.zip /my_product/media/bootanimation/bootanimation.zip
mount --bind $MODDIR/my_product/media/bootanimation/rbootanimation.zip /my_product/media/bootanimation/rbootanimation.zip
# This script will be executed in post-fs-data mode (before system boot)
# For more information please visit the Magisk theme