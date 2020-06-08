# Common board config for onyx

# Kernel
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := onyx_defconfig
TARGET_KERNEL_SOURCE := kernel/oneplus/onyx