
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = 'd9d01ef9074670f553718b75ae509abb40c7a841'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = 'git@github.com:kevintom98/AESD_App_Code.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/MQTT all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/UART all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/MQTT/mqttapp $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/UART/UART $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
