#!/bin/bash
set -e
# working directory
WDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# directory to put final binaries
DST=${WDIR}/bin
mkdir -p $DST
# temporary build directory
BUILD=`mktemp -d`
cd $BUILD
# arbitrary precision library obtained from
# http://crd-legacy.lbl.gov/~dhbailey/mpdist/
tar xf $WDIR/arprec-2.2.19.tar.gz
# bhfield obtained from
# https://seafile.zfn.uni-bremen.de/seafhttp/files/1359da0e-73b1-40c2-b234-2071d07212aa/bhfield-121005.zip
unzip $WDIR/../bhfield-121005.zip 

# build and install arprec in tmp location
# bhfield is statically linked, so the libs aren't needed any more after
# the build
cd arprec/
cp ../bhfield-121005/src/arprec-fix/fortran/main-fixed.cpp fortran/main.cpp
./configure --prefix=$BUILD
make
make install

## build bhfield, put binaries to $DST
# make bhfield build process find arprec-config
export PATH=$PATH:$BUILD/bin
cd $BUILD/bhfield-121005/src/
cp makefile.txt Makefile
make
cp *.exe $DST/

cd
rm -fr $BUILD

