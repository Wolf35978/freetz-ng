$(call PKG_INIT_BIN, 2020-01-01)
$(PKG)_SOURCE:=cacert-$($(PKG)_VERSION).pem
$(PKG)_SOURCE_SHA256:=adf770dfd574a0d6026bfaa270cb6879b063957177a991d453ff1d302c02081f
$(PKG)_SITE:=https://curl.haxx.se/ca

$(PKG)_BINARY:=$(DL_DIR)/$($(PKG)_SOURCE)
$(PKG)_TARGET_BINARY:=$($(PKG)_DEST_DIR)/etc/ssl/certs/ca-bundle.crt

$(PKG)_STARTLEVEL=30

$(PKG_SOURCE_DOWNLOAD)
$(PKG_UNPACKED)

$($(PKG)_TARGET_BINARY): $($(PKG)_BINARY)
	$(INSTALL_FILE)

$(pkg):

$(pkg)-precompiled: $($(PKG)_TARGET_BINARY)

$(pkg)-clean:

$(pkg)-uninstall:
	$(RM) $(CA_BUNDLE_TARGET_BINARY)

$(PKG_FINISH)
