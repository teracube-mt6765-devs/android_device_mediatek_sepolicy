
# SELinux Policy File Configuration
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/non_plat \
    device/mediatek/sepolicy/bsp/non_plat \
    device/mediatek/sepolicy/modem

ifneq ($(call math_lt,$(PRODUCT_SHIPPING_API_LEVEL),28),)
BOARD_VENDOR_SEPOLICY_DIRS += $(wildcard device/mediatek/sepolicy/bsp/ota_upgrade)
endif

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/plat_private \
    device/mediatek/sepolicy/bsp/plat_private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/plat_public \
    device/mediatek/sepolicy/bsp/plat_public

# MTK Debug Rules Configuration
ifeq ($(strip $(HAVE_MTK_DEBUG_SEPOLICY)), yes)
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/debug/non_plat \
    device/mediatek/sepolicy/bsp/debug/non_plat

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/debug/plat_public \
    device/mediatek/sepolicy/bsp/debug/plat_public

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/mediatek/sepolicy/basic/debug/plat_private \
    device/mediatek/sepolicy/bsp/debug/plat_private
endif
