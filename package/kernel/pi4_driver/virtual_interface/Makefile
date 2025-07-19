include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=virtual_interface
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Driver.git
PKG_SOURCE_VERSION:=af34c6a

include $(INCLUDE_DIR)/package.mk

define KernelPackage/virtual_interface
	SUBMENU:=Other modules
	TITLE:=Network Virtual Interface
	DEPENDS:=@TARGET_bcm27xx_bcm2711
	FILES:=$(PKG_BUILD_DIR)/vnet0.ko
	AUTOLOAD:=$(call AutoLoad,50,vnet0)
endef

define KernelPackage/virtual_interface/description
	Vnet0 - Virtual network interface in Pi4
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) ARCH=${LINUX_KARCH} TOOLCHAIN=${TARGET_CROSS} KERNEL=${LINUX_DIR} BUILDING=${PKG_BUILD_DIR}
endef

$(eval $(call KernelPackage,virtual_interface))