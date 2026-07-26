include $(TOPDIR)/rules.mk

PKG_NAME:=srsran
PKG_VERSION:=1.0
PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/TuanTNT19/srsRAN_4G.git
PKG_SOURCE_VERSION:=6bcbd9e

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

CMAKE_BINARY_SUBDIR=build

CMAKE_OPTIONS += -DENABLE_SRSUE=ON -DENABLE_SRSENB=OFF -DENABLE_SRSEPC=OFF -DBUILD_SHARED_LIBS=OFF -DENABLE_ZMQ=ON -DENABLE_BACKWARD=OFF -DHAVE_BACKWARD=OFF

TARGET_CFLAGS += -Wno-error -UHAVE_BACKWARD -DHAVE_BACKWARD=0
TARGET_CXXFLAGS += -Wno-error -UHAVE_BACKWARD -DHAVE_BACKWARD=0

define Package/srsran
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=srsRAN_4G
	DEPENDS:=+libstdcpp +libpthread  +fftw3f +libmbedtls +libzmq +libsctp +libatomic +boost-program_options +libelf +libdw
endef

define Package/srsran/description
	srsRAN_4G for setup Pi4 as UE device
endef

define Package/srsran/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/build/srsue/src/srsue $(1)/usr/bin

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libsrsran_rf.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,srsran))