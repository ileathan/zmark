#!/bin/bash
# Copyright (c) 2013 The Bitcoin Core Developers
# Distributed under the MIT/X11 software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.
#
# Param1: The prefix to mingw staging
# Param2: Path to java comparison tool
# Param3: Number of make jobs. Defaults to 1.

# Exit immediately if anything fails:
set -e
set -o xtrace

MINGWPREFIX=$1
JAVA_COMPARISON_TOOL=$2
RUN_EXPENSIVE_TESTS=$3
JOBS=${4-1}
OUT_DIR=${5-}

if [ $# -lt 2 ]; then
  echo "Usage: $0 [mingw-prefix] [java-comparison-tool] <make jobs> <save output dir>"
  exit 1
fi

DISTDIR=zmark-0.9.3

# Cross-compile for windows first (breaking the mingw/windows build is most common)
cd /home/leathan/zmark
make distdir
mkdir -p win32-build
rsync -av $DISTDIR/ win32-build/
rm -r $DISTDIR
cd win32-build

if [ $RUN_EXPENSIVE_TESTS = 1 ]; then
  ./configure --disable-silent-rules --disable-ccache --prefix=$MINGWPREFIX --host=i586-mingw32msvc --with-qt-bindir=$MINGWPREFIX/host/bin --with-qt-plugindir=$MINGWPREFIX/plugins --with-qt-incdir=$MINGWPREFIX/include --with-boost=$MINGWPREFIX --with-protoc-bindir=$MINGWPREFIX/host/bin CPPFLAGS=-I$MINGWPREFIX/include LDFLAGS=-L$MINGWPREFIX/lib --with-comparison-tool="$JAVA_COMPARISON_TOOL"
else
  ./configure --disable-silent-rules --disable-ccache --prefix=$MINGWPREFIX --host=i586-mingw32msvc --with-qt-bindir=$MINGWPREFIX/host/bin --with-qt-plugindir=$MINGWPREFIX/plugins --with-qt-incdir=$MINGWPREFIX/include --with-boost=$MINGWPREFIX --with-protoc-bindir=$MINGWPREFIX/host/bin CPPFLAGS=-I$MINGWPREFIX/include LDFLAGS=-L$MINGWPREFIX/lib
fi
make -j$JOBS

# And compile for Linux:
cd /home/leathan/zmark
make distdir
mkdir -p linux-build
rsync -av $DISTDIR/ linux-build/
rm -r $DISTDIR
cd linux-build
if [ $RUN_EXPENSIVE_TESTS = 1 ]; then
  ./configure --disable-silent-rules --disable-ccache --with-comparison-tool="$JAVA_COMPARISON_TOOL" --enable-comparison-tool-reorg-tests
else
  ./configure --disable-silent-rules --disable-ccache --with-comparison-tool="$JAVA_COMPARISON_TOOL"
fi
make -j$JOBS

# link interesting binaries to parent out/ directory, if it exists. Do this before
# running unit tests (we want bad binaries to be easy to find)
if [ -d "$OUT_DIR" -a -w "$OUT_DIR" ]; then
  set +e
  # Windows:
  cp /home/leathan/zmark/win32-build/src/zmarkd.exe $OUT_DIR/zmarkd.exe
  cp /home/leathan/zmark/win32-build/src/test/test_zmark.exe $OUT_DIR/test_zmark.exe
  cp /home/leathan/zmark/win32-build/src/qt/zmarkd-qt.exe $OUT_DIR/zmark-qt.exe
  # Linux:
  cp /home/leathan/zmark/linux-build/src/zmarkd $OUT_DIR/zmarkd
  cp /home/leathan/zmark/linux-build/src/test/test_zmark $OUT_DIR/test_zmark
  cp /home/leathan/zmark/linux-build/src/qt/zmarkd-qt $OUT_DIR/zmark-qt
  set -e
fi

# Run unit tests and blockchain-tester on Linux:
cd /home/leathan/zmark/linux-build
make check

# Run RPC integration test on Linux:
/home/leathan/zmark/qa/rpc-tests/wallet.sh /home/leathan/zmark/linux-build/src
/home/leathan/zmark/qa/rpc-tests/listtransactions.py --srcdir /home/leathan/zmark/linux-build/src
# Clean up cache/ directory that the python regression tests create
rm -rf cache

if [ $RUN_EXPENSIVE_TESTS = 1 ]; then
  # Run unit tests and blockchain-tester on Windows:
  cd /home/leathan/zmark/win32-build
  make check
fi

# Clean up builds (pull-tester machine doesn't have infinite disk space)
cd /home/leathan/zmark/linux-build
make clean
cd /home/leathan/zmark/win32-build
make clean

# TODO: Fix code coverage builds on pull-tester machine
# # Test code coverage
# cd /home/leathan/zmark
# make distdir
# mv $DISTDIR linux-coverage-build
# cd linux-coverage-build
# ./configure --enable-lcov --disable-silent-rules --disable-ccache --with-comparison-tool="$JAVA_COMPARISON_TOOL"
# make -j$JOBS
# make cov