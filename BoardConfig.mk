# inherit from the proprietary version
-include vendor/Lenovo/A369i/BoardConfigVendor.mkmk

LOCAL_PATH := device/Lenovo/A369i

# NINJA is enabled for fasted building
# Set 'false' to disable use NINJA
USE_NINJA := true

# Board
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_BOARD_PLATFORM := mt6572
TARGET_NO_BOOTLOADER := true

# Enable dex-preoptimization
WITH_DEXPREOPT := false
DONT_DEXPREOPT_PREBUILTS := true

# Link against libxlog
TARGET_LDPRELOAD := 
libxlog.so:libmtk_symbols.so

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6572

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Assert
TARGET_OTA_ASSERT_DEVICE := A369i

# MTK HARDWARE
OLD_KERNEL := true
NVRAM_WARNING := true
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
BLOCK_BASED_OTA := false
TARGET_RECOVERY_FSTAB := device/Lenovo/A369i/rootdir/recovery.fstab

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# Partitions & Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 6725280
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2659188736
BOARD_CACHEIMAGE_PARTITION_SIZE := 251658240
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4757258240
BOARD_FLASH_BLOCK_SIZE := 131072

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_KMODULES := true

BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

BOARD_KERNEL_BASE := 0x80100000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_CUSTOM_MKBOOTIMG := mtkbootimg
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/bootimg.mk
BOARD_CUSTOM_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x00000100 --second_offset 0x00f00000 --mtk 1


TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true
LZMA_RAMDISK_TARGETS := recovery

# TWRP
TW_THEME := landscape_mdpi
HAVE_SELINUX := true
DEVICE_RESOLUTION := 480x800
TW_IGNORE_MAJOR_AXIS_0 := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sd"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXCLUDE_MTP := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_NO_EXFAT := true
TW_INCLUDE_CRYPTO := false
TW_NO_EXFAT_FUSE := true
TW_NO_USB_STORAGE := true
TW_DEVICE_VERSION := By ipsis
TW_USE_TOOLBOX := true
BOARD_HAS_FLIPPED_SCREEN := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_CPU_TEMP := true
TW_ALWAYS_RMRF := true
TW_SDEXT_NO_EXT4 := true
TW_NO_SCREEN_BLANK := true
TW_HAS_DOWNLOAD_MODE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth/bdroid_buildcfg

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Offline charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# EGL settings
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
BOARD_EGL_NEEDS_FNW := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Display
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Selinux
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Sepolicy hack for old kernel, mt6572 version is 26.
POLICYVERS := 26

# Seccomp filter
BOARD_SECCOMP_POLICY += $(LOCAL_PATH)/seccomp
