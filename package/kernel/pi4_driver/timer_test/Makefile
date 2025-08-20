include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=timer_test
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Driver.git
PKG_SOURCE_VERSION:=38883c2

include $(INCLUDE_DIR)/package.mk

define KernelPackage/timer_test
	SUBMENU:=Other modules
	TITLE:=Timer test module
	DEPENDS:=@TARGET_bcm27xx_bcm2711
	FILES:=$(PKG_BUILD_DIR)/timer_test.ko
	AUTOLOAD:=$(call AutoLoad,50,timer_test)
endef

define KernelPackage/timer_test/description
	Timer test module
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) ARCH=${LINUX_KARCH} TOOLCHAIN=${TARGET_CROSS} KERNEL=${LINUX_DIR} BUILDING=${PKG_BUILD_DIR}
endef

$(eval $(call KernelPackage,timer_test))