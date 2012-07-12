# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/motorola/droid2/droid2.mk)

# Inherit common product files.
$(call inherit-product, vendor/angel/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := angel_droid2
PRODUCT_BRAND := google
PRODUCT_DEVICE := droid2
PRODUCT_MODEL := DROID2
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES := BUILD_FINGERPRINT=google/soju/crespo:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="soju-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849

# Inherit common build.prop overrides
-include vendor/angel/products/common_versions.mk

# Extra crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/angel/overlay/2nd_gen

# Copy crespo specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/angel/proprietary/common/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/angel/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/angel/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit media effect blobs
-include vendor/angel/products/common_media_effects.mk

# Inherit drm blobs
-include vendor/angel/products/common_drm_phone.mk

