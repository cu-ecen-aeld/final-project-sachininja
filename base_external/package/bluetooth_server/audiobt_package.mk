
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AUDIOBT_PACKAGE_VERSION = '78b12b43138a9a4012d168822c337a9919c40faf'

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AUDIOBT_PACKAGE_SITE = 'git@github.com:cu-ecen-aeld/final-project-suja8742.git'
AUDIOBT_PACKAGE_SITE_METHOD = git
AUDIOBT_PACKAGE_GIT_SUBMODULES = YES

define AUDIOBT_PACKAGE_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/server_script.py $(TARGET_DIR)/usr/bin
endef
$(eval $(generic-package))
