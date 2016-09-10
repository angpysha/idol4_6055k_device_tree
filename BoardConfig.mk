# Platform
TARGET_BOARD_PLATFORM := msm8952

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false

# Kernel
TARGET_PREBUILT_KERNEL := device/alcatel/idol4_6055k/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.bootloader=L1AHE0E0BX00 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := false
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partition
TARGET_USERIMAGES_USE_EXT4          := true
BOARD_BOOTIMAGE_PARTITION_SIZE      := 0x04000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 3749707776
#Reserve space for data encryption (11053800960 - 16384 = 11053784576)
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 11053800960 
BOARD_CACHEIMAGE_PARTITION_SIZE     := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE   := 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE              := 131072 # BOARD_KERNEL_PAGESIZE * 64
# ???
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
# TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.qcom

# TWRP
HAVE_SELINUX := true
TW_THEME := portrait_hdpi
TW_EXCLUDE_SUPERSU := true

# DEBUG (BOTH needed to enable logcat)
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true

# TARGET_CRYPTFS_HW_PATH := device/alcatel/idol4_6055k/cryptfs_hw
# TARGET_KEYMASTER_WAIT_FOR_QSEE := true
# TARGET_SWV8_DISK_ENCRYPTION := true

# MISC FLAGS
BOARD_HAS_NO_SELECT_BUTTON := true
# RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true

##### SEPOLICY stuff
# https://android.googlesource.com/platform/external/sepolicy/+/marshmallow-release/README
# BOARD_SEPOLICY_DIRS += device/alcatel/idol4_6055k/sepolicy

TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Enable vendor image symlink
# BOARD_NEEDS_VENDORIMAGE_SYMLINK := true
# TARGET_COPY_OUT_VENDOR := system/vendor
# TARGET_SWV8_DISK_ENCRYPTION := true
# TW_CRYPTO_HAVE_KEYMASTERX := true
# BOARD_NEEDS_VENDORIMAGE_SYMLINK := true

# TARGET_KEYMASTER_WAIT_FOR_QSEE := true
# TARGET_COPY_OUT_VENDOR := system/vendor
# TARGET_SWV8_DISK_ENCRYPTION := true
# TW_CRYPTO_HAVE_KEYMASTERX := true

