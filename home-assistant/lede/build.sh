#!/bin/sh

cd $(dirname $0)
rm -rf build
mkdir build
cd control
tar zcvf ../build/control.tar.gz .
cd ../data
tar zcvf ../build/data.tar.gz .
cd ../build
echo 2.0 > debian-binary
tar zcvf mqtt-tracker.ipk ./control.tar.gz ./data.tar.gz ./debian-binary
