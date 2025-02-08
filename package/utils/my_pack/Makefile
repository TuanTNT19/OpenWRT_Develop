include $(TOPDIR)/rules.mk

PKG_NAME:=my_pack
PKG_VERSION:=1.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/openwrt_package_test.git
PKG_SOURCE_VERSION:=e44a27f01db4ad079628263e0668762c3966e8ea
PKG_MIRROR_HASH:=12ac9bf30787f2ad91776720c999874dae4c26419fd27983422d06e38e32d5ad

include $(INCLUDE_DIR)/package.mk

define Package/my_pack
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=my hello package for pi 
endef

define Package/my_pack/description
	Hello package from my git
endef

define Build/Prepare
	echo "============Prepare for hello"
	rm -rf $(PKG_BUILD_DIR)
	mkdir -p $(PKG_BUILD_DIR)
	tar -xf $(DL_DIR)/$(PKG_SOURCE) -C $(PKG_BUILD_DIR) --strip-components=1
endef

define Build/Configure
	echo "=============Configure for hello"
endef

define Build/Compile
	echo "==========Compile========"
	$(call Build/Compile/Default)
endef

define Package/my_pack/install
	echo "================Package/install for hello"
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hello $(1)/usr/bin
endef

$(eval $(call BuildPackage,my_pack))