
# SELinux Policy File Configuration
BOARD_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/non_plat \
    device/mediatek/sepolicy/bsp/non_plat \
    device/mediatek/sepolicy/$(TARGET_BOARD_PLATFORM)/basic \
    device/mediatek/sepolicy/$(TARGET_BOARD_PLATFORM)/bsp \
    device/mediatek/sepolicy/$(TARGET_BOARD_PLATFORM)/full \
    device/mediatek/sepolicy/modem

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/plat_private \
    device/mediatek/sepolicy/bsp/plat_private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/plat_public \
    device/mediatek/sepolicy/bsp/plat_public
