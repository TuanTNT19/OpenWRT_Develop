include $(TOPDIR)/rules.mk

PKG_NAME:=weather_tracking
PKG_VERSION:=1.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Application.git
PKG_SOURCE_VERSION:=9090a5f
 
include $(INCLUDE_DIR)/package.mk

define Package/weather_tracking
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=weather tracking app
	DEPENDS:=+libc +libcurl
endef

define Package/weather_tracking/description
	Application to track weather
endef

define Package/weather_tracking/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/weather_track $(1)/usr/bin
endef

$(eval $(call BuildPackage,weather_tracking))