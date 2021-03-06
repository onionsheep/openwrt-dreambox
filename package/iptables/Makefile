#
# Copyright (C) 2006-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=iptables
PKG_VERSION:=1.4.6
PKG_RELEASE:=3.1

PKG_MD5SUM:=c67cf30e281a924def6426be0973df56
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://www.netfilter.org/projects/iptables/files \
	ftp://ftp.be.netfilter.org/pub/netfilter/iptables/ \
	ftp://ftp.de.netfilter.org/pub/netfilter/iptables/ \
	ftp://ftp.no.netfilter.org/pub/netfilter/iptables/

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk
ifeq ($(DUMP),)
  -include $(LINUX_DIR)/.config
  include $(INCLUDE_DIR)/netfilter.mk
  STAMP_CONFIGURED:=$(strip $(STAMP_CONFIGURED))_$(shell grep 'NETFILTER' $(LINUX_DIR)/.config | md5s)
endif


define Package/iptables/Default
  SECTION:=net
  CATEGORY:=Network
  URL:=http://netfilter.org/
endef

define Package/iptables/Module
$(call Package/iptables/Default)
  DEPENDS:=iptables $(1)
endef

define Package/iptables
$(call Package/iptables/Default)
  TITLE:=IPv4 firewall administration tool
  MENU:=1
  DEPENDS+= +kmod-ipt-core +libip4tc +libxtables
endef

define Package/iptables/description
IPv4 firewall administration tool.

 Matches:
  - icmp
  - tcp
  - udp
  - comment
  - limit
  - mac
  - multiport

 Targets:
  - ACCEPT
  - DROP
  - REJECT
  - LOG
  - TCPMSS

 Tables:
  - filter
  - mangle

endef

define Package/iptables-mod-conntrack
$(call Package/iptables/Module, +kmod-ipt-conntrack)
  TITLE:=Basic connection tracking extensions
endef

define Package/iptables-mod-conntrack/description
Basic iptables extensions for connection tracking.

 Matches:
  - state
  - conntrack

 Targets:
  - NOTRACK

 Tables:
  - raw

endef

define Package/iptables-mod-conntrack-extra
$(call Package/iptables/Module, +kmod-ipt-conntrack-extra)
  TITLE:=Extra connection tracking extensions
endef

define Package/iptables-mod-conntrack-extra/description
Extra iptables extensions for connection tracking.

 Matches:
  - connbytes
  - connmark
  - recent
  - helper

 Targets:
  - CONNMARK

endef

define Package/iptables-mod-filter
$(call Package/iptables/Module, +kmod-ipt-filter)
  TITLE:=Content inspection extensions
endef

define Package/iptables-mod-filter/description
iptables extensions for packet content inspection.
Includes support for:

 Matches:
  - layer7
  - string

endef

define Package/iptables-mod-imq
$(call Package/iptables/Module, +kmod-ipt-imq)
  TITLE:=IMQ support
endef

define Package/iptables-mod-imq/description
iptables extension for IMQ support.

 Targets:
  - IMQ

endef

define Package/iptables-mod-ipopt
$(call Package/iptables/Module, +kmod-ipt-ipopt)
  TITLE:=IP/Packet option extensions
endef

define Package/iptables-mod-ipopt/description
iptables extensions for matching/changing IP packet options.

 Matches:
  - dscp
  - ecn
  - length
  - mark
  - statistic
  - tcpmss
  - time
  - unclean
  - hl
  - ttl

 Targets:
  - DSCP
  - CLASSIFY
  - ECN
  - MARK
  - HL
  - TTL
  - IPID

endef


define Package/iptables-mod-webmon
$(call Package/iptables/Module, +kmod-ipt-webmon)
  TITLE:=webmon matching support
endef

define Package/iptables-mod-webmon/description
iptables extensions enable webmon matching support

 Matches:
  - webmon
endef

define Package/iptables-mod-weburl
$(call Package/iptables/Module, +kmod-ipt-weburl)
  TITLE:=weburl matching support
endef

define Package/iptables-mod-weburl/description
iptables extensions enable weburl matching support

 Matches:
  - weburl
endef

define Package/iptables-mod-bandwidth
$(call Package/iptables/Module, +kmod-ipt-bandwidth)
  TITLE:=bandwidth matching support
endef

define Package/iptables-mod-bandwidth/description
iptables extensions enable bandwidth matching support

 Matches:
  - bandwidth
endef

define Package/iptables-mod-timerange
$(call Package/iptables/Module, +kmod-ipt-timerange)
  TITLE:=timerange matching support
endef

define Package/iptables-mod-timerange/description
iptables extensions enable timerange matching support

 Matches:
  - timerange
endef

define Package/iptables-mod-ipsec
$(call Package/iptables/Module, +kmod-ipt-ipsec)
  TITLE:=IPsec extensions
endef

define Package/iptables-mod-ipsec/description
iptables extensions for matching ipsec traffic.

 Matches:
  - ah
  - esp
  - policy

endef

define Package/iptables-mod-ipset
$(call Package/iptables/Module, @LINUX_2_6)
  TITLE:=IPset iptables extensions
endef

define Package/iptables-mod-ipset/description
IPset iptables extensions.

 Matches:
  - set

 Targets:
  - SET

endef

define Package/iptables-mod-nat
$(call Package/iptables/Module, +kmod-ipt-nat)
  TITLE:=Basic NAT extensions
endef

define Package/iptables-mod-nat/description
iptables extensions for basic NAT targets.

 Targets:
  - SNAT
  - DNAT
  - MASQUERADE

 Tables:
  - nat

endef

define Package/iptables-mod-nat-extra
$(call Package/iptables/Module, +kmod-ipt-nat-extra)
  TITLE:=Extra NAT extensions
endef

define Package/iptables-mod-nat-extra/description
iptables extensions for extra NAT targets.

 Targets:
  - MIRROR
  - NETMAP
  - REDIRECT

endef

define Package/iptables-mod-ulog
$(call Package/iptables/Module, +kmod-ipt-ulog)
  TITLE:=user-space packet logging
endef

define Package/iptables-mod-ulog/description
iptables extensions for user-space packet logging.

 Targets:
  - ULOG

endef

define Package/iptables-mod-hashlimit
$(call Package/iptables/Module, +kmod-ipt-hashlimit)
  TITLE:=hashlimit matching
endef

define Package/iptables-mod-hashlimit/description
iptables extensions for hashlimit matching

 Matches:
  - hashlimit

endef

define Package/iptables-mod-connlimit
$(call Package/iptables/Module, +kmod-ipt-connlimit)
  TITLE:= connlimit matching
endef

define Package/iptables-mod-connlimit/description
iptables extensions for  connlimit matching

 Matches:
  -  connlimit

endef

define Package/iptables-mod-iprange
$(call Package/iptables/Module, +kmod-ipt-iprange)
  TITLE:=IP range extension
endef

define Package/iptables-mod-iprange/description
iptables extensions for matching ip ranges.

 Matches:
  - iprange

endef

define Package/iptables-mod-extra
$(call Package/iptables/Module, +kmod-ipt-extra)
  TITLE:=Other extra iptables extensions
endef

define Package/iptables-mod-extra/description
Other extra iptables extensions.

 Matches:
  - condition
  - owner
  - physdev (if ebtables is enabled)
  - pkttype
  - quota

endef

define Package/iptables-utils
$(call Package/iptables/Module, )
  TITLE:=iptables save and restore utilities (deprecated)
endef

define Package/iptables-utils/description
This is a dummy package for backwards compatibility reasons.
Everything that used to be provided by this package is part
of iptables now.
endef

define Package/ip6tables
$(call Package/iptables/Default)
  DEPENDS:=+kmod-ip6tables +libip6tc +libxtables
  CATEGORY:=IPv6
  TITLE:=IPv6 firewall administration tool
  MENU:=1
endef

define Package/ip6tables-utils
$(call Package/iptables/Default)
  DEPENDS:=ip6tables
  CATEGORY:=IPv6
  TITLE:=ip6tables save and restore utilities (deprecated)
endef

define Package/ip6tables-utils/description
This is a dummy package for backwards compatibility reasons.
Everything that used to be provided by this package is part
of ip6tables now.
endef

define Package/libiptc
$(call Package/iptables/Default)
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+libip4tc +libip6tc
  TITLE:=IPv4/IPv6 firewall - shared libiptc library (compatibility stub)
endef

define Package/libip4tc
$(call Package/iptables/Default)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=IPv4 firewall - shared libiptc library
endef

define Package/libip6tc
$(call Package/iptables/Default)
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=IPv6 firewall - shared libiptc library
endef

define Package/libxtables
 $(call Package/iptables/Default)
 SECTION:=libs
 CATEGORY:=Libraries
 TITLE:=IPv4/IPv6 firewall - shared xtables library
endef


TARGET_CPPFLAGS := \
	-I$(PKG_BUILD_DIR)/include \
	-I$(LINUX_DIR)/arch/$(LINUX_KARCH)/include \
	$(TARGET_CPPFLAGS)

CONFIGURE_ARGS += \
	--enable-shared \
	--enable-devel \
	--enable-ipv6 \
	--with-kernel="$(LINUX_DIR)" \
	--with-xtlibdir=/usr/lib/iptables

IPTABLES_MAKEOPTS = \
		$(TARGET_CONFIGURE_OPTS) \
		COPT_FLAGS="$(TARGET_CFLAGS)" \
		LDFLAGS="-rdynamic -static-libgcc" \
		KERNEL_DIR="$(LINUX_DIR)" PREFIX=/usr \
		KBUILD_OUTPUT="$(LINUX_DIR)" \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		$(MAKE_TARGETS)

define Build/Compile
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)
	$(MAKE) -C $(PKG_BUILD_DIR) $(IPTABLES_MAKEOPTS)
	$(MAKE) -C $(PKG_BUILD_DIR) $(IPTABLES_MAKEOPTS) install
	$(MAKE) -C $(PKG_BUILD_DIR)/libipq $(IPTABLES_MAKEOPTS)
	$(MAKE) -C $(PKG_BUILD_DIR)/libipq $(IPTABLES_MAKEOPTS) install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(INSTALL_DIR) $(1)/usr/include/iptables
	$(INSTALL_DIR) $(1)/usr/include/net/netfilter

	# XXX: iptables header fixup, some headers are not installed by iptables anymore
	$(CP) $(PKG_BUILD_DIR)/include/net/netfilter/*.h $(1)/usr/include/net/netfilter/
	$(CP) $(PKG_BUILD_DIR)/include/iptables/*.h $(1)/usr/include/iptables/
	$(CP) $(PKG_BUILD_DIR)/include/iptables.h $(1)/usr/include/
	$(CP) $(PKG_BUILD_DIR)/include/libipq/libipq.h $(1)/usr/include/
	$(CP) $(PKG_BUILD_DIR)/include/libipulog $(1)/usr/include/
	$(CP) $(PKG_BUILD_DIR)/include/libiptc $(1)/usr/include/

	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libxtables.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libip*tc.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libipq.a $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/xtables.pc $(1)/usr/lib/pkgconfig/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libiptc.pc $(1)/usr/lib/pkgconfig/
endef

define Package/iptables/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/iptables $(1)/usr/sbin/
	$(LN) iptables $(1)/usr/sbin/iptables-save
	$(LN) iptables $(1)/usr/sbin/iptables-restore
	$(INSTALL_DIR) $(1)/usr/lib/iptables
	(cd $(PKG_INSTALL_DIR)/usr/lib/iptables ; \
		for m in $(patsubst xt_%,ipt_%,$(IPT_BUILTIN)) $(patsubst ipt_%,xt_%,$(IPT_BUILTIN)); do \
			if [ -f $(PKG_INSTALL_DIR)/usr/lib/iptables/lib$$$${m}.so ]; then \
				$(CP) $(PKG_INSTALL_DIR)/usr/lib/iptables/lib$$$${m}.so $(1)/usr/lib/iptables/ ;\
			fi; \
		done \
	)
endef

define Package/iptables-utils/install
	true
endef

define Package/ip6tables/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/ip6tables $(1)/usr/sbin/
	$(LN) ip6tables $(1)/usr/sbin/ip6tables-save
	$(LN) ip6tables $(1)/usr/sbin/ip6tables-restore
	$(INSTALL_DIR) $(1)/usr/lib/iptables
	(cd $(PKG_INSTALL_DIR)/usr/lib/iptables ; \
		$(CP) libip6t_*.so $(1)/usr/lib/iptables/ \
	)
endef

define Package/ip6tables-utils/install
	true
endef

define Package/libiptc/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libiptc.so* $(1)/usr/lib/
endef

define Package/libip4tc/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libip4tc.so* $(1)/usr/lib/
endef

define Package/libip6tc/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libip6tc.so* $(1)/usr/lib/
endef

define Package/libxtables/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libxtables.so* $(1)/usr/lib/
endef

define BuildPlugin
  define Package/$(1)/install
	$(INSTALL_DIR) $$(1)/usr/lib/iptables
	for m in $(patsubst xt_%,ipt_%,$(2)) $(patsubst ipt_%,xt_%,$(2)); do \
		if [ -f $(PKG_INSTALL_DIR)/usr/lib/iptables/lib$$$$$$$${m}.so ]; then \
			$(CP) $(PKG_INSTALL_DIR)/usr/lib/iptables/lib$$$$$$$${m}.so $$(1)/usr/lib/iptables/ ; \
		fi; \
	done
	$(3)
  endef

  $$(eval $$(call BuildPackage,$(1)))
endef

L7_INSTALL:=\
	$(INSTALL_DIR) $$(1)/etc/l7-protocols; \
	$(CP) files/l7/*.pat $$(1)/etc/l7-protocols/


$(eval $(call BuildPackage,iptables))
$(eval $(call BuildPackage,iptables-utils))
$(eval $(call BuildPlugin,iptables-mod-conntrack,$(IPT_CONNTRACK-m)))
$(eval $(call BuildPlugin,iptables-mod-conntrack-extra,$(IPT_CONNTRACK_EXTRA-m)))
$(eval $(call BuildPlugin,iptables-mod-extra,$(IPT_EXTRA-m)))
$(eval $(call BuildPlugin,iptables-mod-filter,$(IPT_FILTER-m),$(L7_INSTALL)))
$(eval $(call BuildPlugin,iptables-mod-hashlimit,$(IPT_HASHLIMIT-m)))
$(eval $(call BuildPlugin,iptables-mod-connlimit,$(IPT_CONNLIMIT-m)))
$(eval $(call BuildPlugin,iptables-mod-weburl,$(IPT_WEBURL-m)))
$(eval $(call BuildPlugin,iptables-mod-webmon,$(IPT_WEBMON-m)))
$(eval $(call BuildPlugin,iptables-mod-bandwidth,$(IPT_BANDWIDTH-m)))
$(eval $(call BuildPlugin,iptables-mod-timerange,$(IPT_TIMERANGE-m)))
$(eval $(call BuildPlugin,iptables-mod-imq,$(IPT_IMQ-m)))
$(eval $(call BuildPlugin,iptables-mod-ipopt,$(IPT_IPOPT-m)))
$(eval $(call BuildPlugin,iptables-mod-ipsec,$(IPT_IPSEC-m)))
$(eval $(call BuildPlugin,iptables-mod-ipset,ipt_set ipt_SET))
$(eval $(call BuildPlugin,iptables-mod-nat,$(IPT_NAT-m)))
$(eval $(call BuildPlugin,iptables-mod-nat-extra,$(IPT_NAT_EXTRA-m)))
$(eval $(call BuildPlugin,iptables-mod-iprange,$(IPT_IPRANGE-m)))
$(eval $(call BuildPlugin,iptables-mod-ulog,$(IPT_ULOG-m)))
$(eval $(call BuildPackage,ip6tables))
$(eval $(call BuildPackage,ip6tables-utils))
$(eval $(call BuildPackage,libiptc))
$(eval $(call BuildPackage,libip4tc))
$(eval $(call BuildPackage,libip6tc))
$(eval $(call BuildPackage,libxtables))
