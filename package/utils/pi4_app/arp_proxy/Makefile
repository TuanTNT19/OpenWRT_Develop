include $(TOPDIR)/rules.mk

PKG_NAME:=arp_proxy
PKG_VERSION:=1.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Application.git
PKG_SOURCE_VERSION:=9d1ca32
 
include $(INCLUDE_DIR)/package.mk

define Package/arp_proxy
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=ARP proxy
	DEPENDS:=+libtins
endef

define Package/arp_proxy/description
	ARP Proxy program using libtins
endef

define Package/arp_proxy/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ARP_Proxy $(1)/usr/bin
endef

$(eval $(call BuildPackage,arp_proxy))