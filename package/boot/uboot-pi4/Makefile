include $(TOPDIR)/rules.mk

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/TuanTNT19/u-boot.git
PKG_VERSION:=2026.01
PKG_SOURCE_VERSION:=50dad4d

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

define U-Boot/Default
  BUILD_TARGET:=bcm27xx
  BUILD_SUBTARGET:=bcm2711
  UBOOT_CONFIG:=rpi_4_owrt
  UBOOT_IMAGE:=u-boot.bin
endef

define U-Boot/pi4
  NAME:=RAS PI 4
  BUILD_DEVICES:=rpi-4-uboot
endef

UBOOT_TARGETS := pi4

define Build/Configure
	+$(MAKE) -C $(PKG_BUILD_DIR) distclean
	+$(MAKE) -C $(PKG_BUILD_DIR) rpi_4_owrt_defconfig
endef

define Build/Compile
	+env -i \
    	PATH="$(PATH)" \
    	HOME="$(HOME)" \
    	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
    	CROSS_COMPILE=aarch64-linux-gnu- \
    	CC=aarch64-linux-gnu-gcc-10
endef

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/u-boot.bin $(STAGING_DIR_IMAGE)/u-boot.bin
	$(CP) $(PKG_BUILD_DIR)/arch/arm/dts/bcm2711-rpi-4-b_owrt.dtb $(STAGING_DIR_IMAGE)/bcm2711-rpi-4-b_owrt.dtb
endef

$(eval $(call BuildPackage/U-Boot))
