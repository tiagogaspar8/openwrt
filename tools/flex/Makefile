#
# Copyright (C) 2008-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=flex
PKG_CPE_ID:=cpe:/a:westes:flex
PKG_VERSION:=2.6.4

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/westes/flex/releases/download/v$(PKG_VERSION)/
PKG_HASH:=e87aae032bf07c26f85ac0ed3250998c37621d95f8bd748b31f15b33c45ee995

HOST_FIXUP:=autoreconf
HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk

HOST_CONFIGURE_ARGS += --disable-shared

define Host/Compile
	$(call Host/Compile/Default,SUBDIRS='src tools')
endef

define Host/Install
	$(call Host/Compile/Default,install SUBDIRS='src tools')
	$(LN) flex $(STAGING_DIR_HOST)/bin/lex
endef

define Host/Uninstall
	-$(call Host/Compile/Default,uninstall SUBDIRS='src tools')
endef

define Host/Clean
	rm -f $(STAGING_DIR_HOST)/bin/lex
	$(call Host/Clean/Default)
endef

$(eval $(call HostBuild))
