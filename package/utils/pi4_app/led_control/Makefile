include $(TOPDIR)/rules.mk

PKG_NAME:=led_control
PKG_VERSION:=1.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/Pi4_Application.git
PKG_SOURCE_VERSION:=31846e8

include $(INCLUDE_DIR)/package.mk

define Package/led_control
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=GPIO23 Led Application package for pi 
	DEPENDS:=+libc
endef

define Package/led_control/description
	GPIO23 Led Application package from my git
endef

define Build/Prepare
	echo "============Prepare for GPIO23 Led Application========="
	$(call Build/Prepare/Default)
endef

define Build/Compile
	echo "==========Compile for GPIO23 Led Application =============="
	$(call Build/Compile/Default)
	echo "==========End for GPIO23 Led Application OK??=============="
endef

define Package/led_control/install
	echo "================Package/install for GPIO23 Led Application ======="
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/main $(1)/usr/bin
endef

$(eval $(call BuildPackage,led_control))