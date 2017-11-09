TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = vacuum
# vacuum.dbd will be created and installed
DBD += vacuum.dbd

# vacuum.dbd will be made up from these files:
vacuum_DBD += base.dbd
vacuum_DBD += modules.dbd

# Include dbd files from all support applications:
#vacuum_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#vacuum_LIBS += xxx

# vacuum_registerRecordDeviceDriver.cpp derives from vacuum.dbd
vacuum_SRCS += vacuum_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
vacuum_SRCS_DEFAULT += vacuumMain.cpp
vacuum_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#vacuum_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
vacuum_LIBS += $(EPICS_BASE_IOC_LIBS)
vacuum_LIBS += pvaSrv pvAccess pvData pvMB

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
PROD_LIBS += stream
PROD_LIBS += asyn
