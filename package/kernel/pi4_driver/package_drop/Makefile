include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=package_drop
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Driver.git
PKG_SOURCE_VERSION:=9af664b

include $(INCLUDE_DIR)/package.mk

define KernelPackage/package_drop
	SUBMENU:=Other modules
	TITLE:=Package drop module
	DEPENDS:=@TARGET_bcm27xx_bcm2711
	FILES:=$(PKG_BUILD_DIR)/package_drop.ko
	AUTOLOAD:=$(call AutoLoad,50,package_drop)
endef

define KernelPackage/package_drop/description
	Package drop module using Netfilter
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) ARCH=${LINUX_KARCH} TOOLCHAIN=${TARGET_CROSS} KERNEL=${LINUX_DIR} BUILDING=${PKG_BUILD_DIR}
endef

$(eval $(call KernelPackage,package_drop))