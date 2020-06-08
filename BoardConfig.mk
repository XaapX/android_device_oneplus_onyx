# config.mk
#
# Product-specific compile-time definitions
#

# Allow Lineage config to override others
-include device/oneplus/onyx/BoardConfigLineage.mk

TARGET_BOARD_PLATFORM := msm8974
TARGET_BOOTLOADER_BOARD_NAME := onyx
#TARGET_BOARD_INFO_FILE := device/oneplus/onyx/onyx/board-info.txt

TARGET_USES_INTERACTION_BOOST := true

TARGET_USES_AOSP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB := device/oneplus/onyx/fstab.common
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOOTLOADER_GCC_VERSION := arm-eabi-4.8
BOOTLOADER_PLATFORM := msm8974

BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true

-include $(QCPATH)/common/msm8974/BoardConfigVendor.mk

# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := false

BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn

USE_OPENGL_RENDERER := true

BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_ROOT_EXTRA_FOLDERS += firmware firmware/radio persist
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2147483648
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12611874816
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
ifneq ($(TARGET_USES_AOSP),true)
TARGET_USES_QCOM_BSP := true
endif

include device/qcom/sepolicy-legacy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    $(PLATFORM_PATH)/sepolicy

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x02000000
BOARD_RAMDISK_OFFSET     := 0x02200000

TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm

TARGET_NO_RPC := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

#Let charger mode enter suspend
BOARD_CHARGER_ENABLE_SUSPEND := true

#Enable HW based full disk encryption
# TODO: disable due to compile error due to mismatch with system/vold
# TARGET_HW_DISK_ENCRYPTION := true

#Enable SW based full disk encryption
TARGET_SWV8_DISK_ENCRYPTION := false

#Enable PD locater/notifier
TARGET_PD_SERVICE_ENABLED := true

# Install odex files into the other system image
BOARD_USES_SYSTEM_OTHER_ODEX := true

-include vendor/oneplus/onyx/BoardConfigVendor.mk

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# Exclude serif fonts for saving system.img size.
EXCLUDE_SERIF_FONTS := true

USE_XML_AUDIO_POLICY_CONF := 1

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_qcwcn
PRODUCT_VENDOR_MOVE_ENABLED      := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_MAC_ADDR_REV   := true
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WPA_SUPPLICANT_VERSION           := VER_0_8_X