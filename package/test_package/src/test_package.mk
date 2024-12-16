################################################################################
#
# test package
#
################################################################################

TEST_PACKAGE_VERSION = 1.0
TEST_PACKAGE_SITE = package/embeddedinn/src
TEST_PACKAGE_SITE_METHOD = local# Other methods like git,wget,scp,file etc. are also available.

define TEST_PACKAGE_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define TEST_PACKAGE_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/test_package  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
