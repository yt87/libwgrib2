#!/bin/bash

# ip2lib_d does not build with debug flags.
#export CFLAGS=${DEBUG_CFLAGS}
#export FFLAGS=${DEBUG_FFLAGS}
make -f makefile.conda || exit 1

# There is no 'install' target in makefile.
mkdir -p ${PREFIX}/lib
if [ ${SHLIB_EXT} == ".dylib" ]; then
    cp -a lib/libwgrib2*${SHLIB_EXT} ${PREFIX}/lib
else
    cp -a lib/libwgrib2${SHLIB_EXT}* ${PREFIX}/lib
fi

mkdir -p ${PREFIX}/include/wgrib2
cp wgrib2/config.h ${PREFIX}/include/wgrib2
cp wgrib2/ipolates.h ${PREFIX}/include/wgrib2
cp wgrib2/wgrib2.h ${PREFIX}/include/wgrib2
cp wgrib2/wgrib2_api.h ${PREFIX}/include/wgrib2
cp ip2lib_d/iplib_d.h ${PREFIX}/include/wgrib2
