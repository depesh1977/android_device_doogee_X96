#!/bin/bash
cd ./bootable/recovery
for f in ../../device/doogee/X96/patches/*.patch
do
  patch -p1 < $f
done
cd ../..
