include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=my_netfilter
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Driver.git
PKG_SOURCE_VERSION:=d2e9cc7

include $(INCLUDE_DIR)/package.mk

define KernelPackage/my_netfilter
	SUBMENU:=Other modules
	TITLE:=My Netfilter
	DEPENDS:=@TARGET_bcm27xx_bcm2711
	FILES:=$(PKG_BUILD_DIR)/my_netfilter.ko
	AUTOLOAD:=$(call AutoLoad,50,my_netfilter)
endef

define KernelPackage/my_netfilter/description
	Netfilter hook 
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) ARCH=${LINUX_KARCH} TOOLCHAIN=${TARGET_CROSS} KERNEL=${LINUX_DIR} BUILDING=${PKG_BUILD_DIR}
endef

$(eval $(call KernelPackage,my_netfilter))