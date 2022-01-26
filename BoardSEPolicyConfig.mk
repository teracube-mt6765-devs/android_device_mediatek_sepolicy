# SELinux Policy File Configuration
BOARD_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/non_plat \
    device/mediatek/sepolicy/bsp/non_plat \
    device/mediatek/sepolicy/modem

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/mediatek/sepolicy/basic/plat_private \
    device/mediatek/sepolicy/bsp/plat_private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/mediatek/sepolicy/basic/plat_public \
    device/mediatek/sepolicy/bsp/plat_public

# MTK Neverallow Rules Configuration
ifneq (yes,$(strip $(MTK_BUILD_WITHOUT_MTK_NEVERALLOW_RULES)))
BOARD_SEPOLICY_DIRS += device/mediatek/sepolicy/basic/neverallows/non_plat
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += device/mediatek/sepolicy/basic/neverallows/plat_public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/mediatek/sepolicy/basic/neverallows/plat_private
endif
