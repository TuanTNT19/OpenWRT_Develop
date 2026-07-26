include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=netfilter_hook
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Driver.git
PKG_SOURCE_VERSION:=0ba438e

include $(INCLUDE_DIR)/package.mk

define KernelPackage/netfilter_hook
	SUBMENU:=Other modules
	TITLE:=Netfilter hook checking
	DEPENDS:=@TARGET_bcm27xx_bcm2711
	FILES:=$(PKG_BUILD_DIR)/Netfilter_hook.ko
	AUTOLOAD:=$(call AutoLoad,50,netfilter_hook)
endef

define KernelPackage/netfilter_hook/description
	Netfilter hook checking
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) ARCH=${LINUX_KARCH} TOOLCHAIN=${TARGET_CROSS} KERNEL=${LINUX_DIR} BUILDING=${PKG_BUILD_DIR}
endef

$(eval $(call KernelPackage,netfilter_hook))