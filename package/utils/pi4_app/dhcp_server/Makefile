include $(TOPDIR)/rules.mk

PKG_NAME:=dhcp_server
PKG_VERSION:=1.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Application.git
PKG_SOURCE_VERSION:=c431b72
 
include $(INCLUDE_DIR)/package.mk

define Package/dhcp_server
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=dhcp server
	DEPENDS:=+libpcap +libtins
endef

define Package/dhcp_server/description
	DHCP server program using llbpcap
endef

define Package/dhcp_server/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/dhcp_server $(1)/usr/bin
endef

$(eval $(call BuildPackage,dhcp_server))
