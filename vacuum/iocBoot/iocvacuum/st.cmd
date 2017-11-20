#!../../bin/linux-x86_64/vacuum

## You may have to change vacuum to something else
## everywhere it appears in this file

< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/protocols")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/vacuum.dbd"
vacuum_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadTemplate "db/vacuum.substitutions"

drvAsynSerialPortConfigure("SYS-SEC-UL1000","/dev/ttyS0")
#asynSetTraceMask("SYS-SEC-UL1000",-1,0x9)
#asynSetTraceIOMask("SYS-SEC-UL1000",-1,0x2)

cd "${TOP}/iocBoot/${IOC}"
iocInit
startPVAServer
