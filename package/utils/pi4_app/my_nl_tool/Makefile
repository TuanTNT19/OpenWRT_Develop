include $(TOPDIR)/rules.mk

PKG_NAME:=my_nl_tool
PKG_VERSION:=1.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Application.git
PKG_SOURCE_VERSION:=e83ab60
 
include $(INCLUDE_DIR)/package.mk

define Package/my_nl_tool
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=ip application
	DEPENDS:=+libc 
endef

define Package/my_nl_tool/description
	ip application to show, up/down, add/del ip addr, add/del route rules
endef

define Package/my_nl_tool/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/my_ip $(1)/usr/bin
endef

$(eval $(call BuildPackage,my_nl_tool))