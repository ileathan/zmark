#!/bin/bash
# create multiresolution windows icon, and pixmaps
# variables
ICON_SRC=../pixmaps/zmark1024.png
ICON_DST=../../src/qt/res/icons/zmark.ico
ICON_SRC_TEST=../../src/qt/res/icons/zmark_testnet.png
ICON_DST_TEST=../../src/qt/res/icons/zmark_testnet.ico
# create base for all mainnet icons
convert ${ICON_SRC} -resize 16x16 ../pixmaps/zmark16.png
convert ${ICON_SRC} -resize 32x32 ../pixmaps/zmark32.png
convert ${ICON_SRC} -resize 48x48 zmark-48.png
convert ${ICON_SRC} -resize 64x64 ../pixmaps/zmark64.png
convert ${ICON_SRC} -resize 128x128 ../pixmaps/zmark128.png
convert ${ICON_SRC} -resize 256x256 ../pixmaps/zmark256.png
convert ${ICON_SRC} -resize 512x512 ../pixmaps/zmark512.png
cp ../pixmaps/zmark256.png ../../src/qt/res/icons/zmark.png
# create mainnet windows icon with all variant sizes
convert ../pixmaps/zmark16.png ../pixmaps/zmark32.png zmark-48.png ../pixmaps/zmark256.png ${ICON_DST}
cp ../pixmaps/zmark16.png ../../src/qt/res/icons/toolbar.png
# create base for all testnet icons 
convert ../pixmaps/Tzmark1024.png -resize 256x256 ${ICON_SRC_TEST}
convert ${ICON_SRC_TEST} -resize 16x16 zmark-test-16.png
convert ${ICON_SRC_TEST} -resize 32x32 zmark-test-32.png
convert ${ICON_SRC_TEST} -resize 48x48 zmark-test-48.png
cp ${ICON_SRC_TEST} zmark-test-256.png
# create testnet windows icon with all varient sizes
convert zmark-test-16.png zmark-test-32.png zmark-test-48.png zmark-test-256.png ${ICON_DST_TEST}
cp zmark-test-16.png ../../src/qt/res/icons/toolbar_testnet.png
# create pixmap ico and xpm files
convert ../pixmaps/zmark16.png ../pixmaps/favicon.ico
cp ${ICON_DST} ../pixmaps/zmark.ico
convert ../pixmaps/zmark16.png ../pixmaps/zmark16.xpm
convert ../pixmaps/zmark32.png ../pixmaps/zmark32.xpm
convert ../pixmaps/zmark64.png ../pixmaps/zmark64.xpm
convert ../pixmaps/zmark128.png ../pixmaps/zmark128.xpm
convert ../pixmaps/zmark256.png ../pixmaps/zmark256.xpm
# create apple icns file, use libicns 8.2.1 not the default
mv ../pixmaps/zmark64.png ../pixmaps/tempzmark64.png
png2icns ../../src/qt/res/icons/zmark.icns ../pixmaps/zmark*.png
mv ../pixmaps/tempzmark64.png ../pixmaps/zmark64.png
# clean up
rm zmark-48.png
rm zmark-test-*.png
