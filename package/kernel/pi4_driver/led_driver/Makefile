include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=led_driver
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Driver.git
PKG_SOURCE_VERSION:=5e2dacc

include $(INCLUDE_DIR)/package.mk

define KernelPackage/led_driver
	SUBMENU:=Other modules
	TITLE:=LED driver for GPIO23 in PI4b
	DEPENDS:=@TARGET_bcm27xx_bcm2711
	FILES:=$(PKG_BUILD_DIR)/led23_gpio.ko
	AUTOLOAD:=$(call AutoLoad,50,led23_gpio)
endef

define KernelPackage/led_driver/description
	Driver led for GPIO23 in Ras pi 4b
endef

define Build/Compile
	$(MAKE) -C "$(LINUX_DIR)" \
        ARCH="$(LINUX_KARCH)" \
        CROSS_COMPILE="$(TARGET_CROSS)" \
        M="$(PKG_BUILD_DIR)" \
        modules
endef

$(eval $(call KernelPackage,led_driver))