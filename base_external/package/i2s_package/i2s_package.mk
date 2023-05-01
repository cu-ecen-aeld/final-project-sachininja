
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
I2S_PACKAGE_VERSION = 'f4cce6e8ccdb2bc659ca24b2d8e1604536143bc3'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
I2S_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-dash6424.git'
I2S_PACKAGE_SITE_METHOD = git
I2S_PACKAGE_GIT_SUBMODULES = YES

define I2S_PACKAGE_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/test1.wav $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/test2.wav $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/test3.wav $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/test4.wav $(TARGET_DIR)/usr/bin
        $(INSTALL) -m 0755 $(@D)/i2s_sequencer.py $(TARGET_DIR)/usr/bin
        $(INSTALL) -m 0755 $(@D)/server_script.py $(TARGET_DIR)/usr/bin
endef
$(eval $(generic-package))
