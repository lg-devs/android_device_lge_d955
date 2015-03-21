# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d955/d955.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := d955
PRODUCT_NAME := cm_d955
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Flex
PRODUCT_MANUFACTURER := lge

# Use D950 fingerprints for now, until I can find D955 ones
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/z_att_us/zee:4.4.2/KOT49I.D95020b/D95020b.1395467949:user/release-keys \
    PRIVATE_BUILD_DESC="z_att_us-user 4.4.2 KOT49I.D95020b D95020b.1395467949 release-keys"

PRODUCT_PACKAGES += Torch
