#
# Copyright (C) 2008 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/gec6410-full
  NAME:=GEC6410 (full)
  PACKAGES:=xserver-xorg xf86-video-glamo xf86-input-tslib enlightenment fso-gsm0710muxd python fso-frameworkd fso-gpsd paroli wireless-tools
endef

define Profile/gec6410-full/Description
	Package set with accelerated x11-environment and phone-suite (paroli)
endef
$(eval $(call Profile,gec6410-full))

