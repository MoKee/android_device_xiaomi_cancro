# TWRP
LZMA_RAMDISK_TARGETS                            := boot,recovery
BOARD_HAS_NO_REAL_SDCARD                        := true
BOARD_RECOVERY_SWIPE                            := true
BOARD_SUPPRESS_SECURE_ERASE                     := true
BOARD_SUPPRESS_EMMC_WIPE                        := true
RECOVERY_SDCARD_ON_DATA				:= true
RECOVERY_GRAPHICS_USE_LINELENGTH	        := true
TARGET_RECOVERY_QCOM_RTC_FIX                    := true
TW_FLASH_FROM_STORAGE				:= true
TW_INTERNAL_STORAGE_PATH			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT		        := "data"
TW_TARGET_USES_QCOM_BSP				:= true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID          := true
TW_NO_LEGACY_PROPS                              := true
TW_NO_SCREEN_TIMEOUT                            := true
TW_NO_SCREEN_BLANK                              := true
TW_EXTRA_LANGUAGES                              := true

PRODUCT_COPY_FILES += device/xiaomi/virgo/twrp/twrp.fstab:recovery/root/etc/twrp.fstab
