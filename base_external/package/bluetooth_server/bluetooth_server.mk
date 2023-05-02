
##############################################################
#
# BLUETOOTH_SERVER
#
##############################################################

#TODO: Fill up the contents below in order to reference bluetooth server pacakages
BLUETOOTH_SERVER_VERSION = '003b8ec33d9286394494a2aae8d7903d3bac348a'

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
