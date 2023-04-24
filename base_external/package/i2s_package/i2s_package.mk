
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
I2S_PACKAGE_VERSION = '825b62794fa4f485be4404540660a84aae2f4643'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
I2S_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-dash6424.git'
I2S_PACKAGE_SITE_METHOD = git
I2S_PACKAGE_GIT_SUBMODULES = YES

define I2S_PACKAGE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/asound.conf $(TARGET_DIR)/etc/
	$(INSTALL) -m 0755 $(@D)/working_john.wav $(TARGET_DIR)/usr/share/sounds/alsa/
endef
$(eval $(generic-package))
