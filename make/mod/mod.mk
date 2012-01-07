$(call PKG_INIT_BIN,1.0)

# We need a dependecy to build the fuse module outside the kernel tree
ifeq ($(and $(strip $(FREETZ_MODULE_fuse)),$(strip $(FREETZ_KERNEL_VERSION_2_6_13))),y)
$(PKG)_DEPENDS_ON := fuse
endif

$(PKG_UNPACKED)

$(pkg): $($(PKG)_TARGET_DIR)/.exclude

# List all files that are optional with their dependecies
$($(PKG)_TARGET_DIR)/.exclude: $(TOPDIR)/.config
	@echo -n "" > $@; \
	[ ! "$(EXTERNAL_ENABLED)" == "y" ] && echo "etc/init.d/rc.external" >> $@; \
	[ ! "$(FREETZ_PATCH_FREETZMOUNT)" == "y" ] && echo "usr/lib/libmodmount.sh" >> $@; \
	[ "$(FREETZ_REMOVE_BOX_INFO)" == "y" ] && echo "usr/lib/cgi-bin/mod/box_info.cgi" >> $@; \
	[ "$(FREETZ_REMOVE_FREETZ_INFO)" == "y" ] && echo -e "usr/lib/cgi-bin/mod/do_download_config.cgi\nusr/lib/cgi-bin/mod/info.cgi" >> $@; \
	[ "$(FREETZ_STYLE_COLORED)" == "y" ] && echo "usr/share/style/colorscheme-grey.css" >> $@ || echo "usr/share/style/colorscheme-colored.css" >> $@; \
	[ ! "$(FREETZ_HAS_AVM_USB_HOST)" == "y" -o "$(FREETZ_REMOVE_FTPD)" == "y" ] && echo "etc/init.d/rc.ftpd" >> $@; \
	[ "$(FREETZ_REMOVE_DSLD)" == "y" ] && echo -e "usr/bin/wrapper/dsld\netc/init.d/rc.dsld" >> $@; \
	[ ! "$(FREETZ_HAS_AVM_USB_HOST)" == "y" -o "$(FREETZ_REMOVE_SMBD)" == "y" ] && [ ! "$(FREETZ_PACKAGE_SAMBA)" == "y" ] && echo "etc/init.d/rc.smbd" >> $@; \
	[ "$(FREETZ_PACKAGE_MDEV)" == "y" -o "$(FREETZ_HAS_AVM_UDEV)" == "y" ] && echo "etc/device.table" >> $@; \
	[ ! "$(FREETZ_PACKAGE_MOD_ETCSERVICES)" == "y" ] && echo "etc/services" >> $@; \
	[ ! "$(FREETZ_CUSTOM_UDEV_RULES)" == "y" ] && echo -e "etc/default.mod/udev_*.def\netc/udev/rules.d/udev_first.def\netc/udev/rules.d/udev_final.def" >> $@; \
	[ ! "$(FREETZ_HAS_AVM_UDEV)" == "y" ] && echo "etc/udev" >> $@; \
	touch $@

$(pkg)-precompiled:

$(pkg)-clean:

$(PKG_FINISH)
