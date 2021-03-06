# libdiskimage/definitions.cmake - Definitions of source files and include directories.
add_library(diskimage
  ${LIBDISKIMAGE_DIR}/DI2IMGBackingStore.cpp
  ${LIBDISKIMAGE_DIR}/DIApple35DiskStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIApple525DiskStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIATABlockStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIBackingStore.cpp
  ${LIBDISKIMAGE_DIR}/DIBlockStorage.cpp
  ${LIBDISKIMAGE_DIR}/DICommon.cpp
  ${LIBDISKIMAGE_DIR}/DIDC42BackingStore.cpp
  ${LIBDISKIMAGE_DIR}/DIDDLDiskStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIDiskStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIFDIDiskStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIFileBackingStore.cpp
  ${LIBDISKIMAGE_DIR}/DILogicalDiskStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIRAMBackingStore.cpp
  ${LIBDISKIMAGE_DIR}/DIRAWBlockStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIV2DDiskStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIVDIBlockStorage.cpp
  ${LIBDISKIMAGE_DIR}/DIVMDKBlockStorage.cpp
)
set(LIBDISKIMAGE_INCLUDE_DIRS
  ${LIBDISKIMAGE_DIR})

set(LIBDISKIMAGE diskimage)