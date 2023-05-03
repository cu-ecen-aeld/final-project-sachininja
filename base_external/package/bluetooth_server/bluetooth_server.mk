
##############################################################
#
# BLUETOOTH_SERVER
#
##############################################################

#TODO: Fill up the contents below in order to reference bluetooth server pacakages
BLUETOOTH_SERVER_VERSION = 'f36f117ce7401120fa0d18f55b85454cc41e68ef'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BLUETOOTH_SERVER_SITE = 'git@github.com:cu-ecen-aeld/final-project-suja8742.git'
BLUETOOTH_SERVER_SITE_METHOD = git
BLUETOOTH_SERVER_GIT_SUBMODULES = YES

define BLUETOOTH_SERVER_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/server_script.py $(TARGET_DIR)/usr/bin
endef
$(eval $(generic-package))
