include $(TOPDIR)/rules.mk

PKG_NAME:=mii-diag
PKG_SOURCE_VERSION:=8e02261
PKG_VERSION:=1.0
PKG_RELEASE:=1
PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/mii-diag.git
 
include $(INCLUDE_DIR)/package.mk

define Package/mii-diag
	SECTION:=net
	CATEGORY:=Network
	TITLE:=mii-diag tool 
	DEPENDS:=+libc
endef

define Package/mii-diag/description
		TITLE:=mii-diag tool 
endef

define Package/mii-diag/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mii-diag $(1)/usr/bin
endef

$(eval $(call BuildPackage,mii-diag))