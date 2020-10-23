#!/bin/bash
export LC_TIME=en_US.UTF8

rm -rf ./taiHEN
git clone --recurse-submodules https://github.com/yifanlu/taiHEN
cp ./taiHEN.patch ./taiHEN && cd ./taiHEN && git apply ./taiHEN.patch && cd ..
cp ./build_satellite.sh ./taiHEN && cd ./taiHEN && ./build_satellite.sh && cd ..

rm -f ./vitawiki.xyz.in && cp ./henyoti.in.cfg ./vitawiki.xyz.in
echo TAIHEN_CRC32=0x$(crc32 ./taiHEN/build/taihen.skprx) >> ./vitawiki.xyz.in

rm -rf ./henkaku
git clone --recurse-submodules https://github.com/henkaku/henkaku
cp ./henkaku.patch ./henkaku && cd ./henkaku && git apply ./henkaku.patch && cd ..
cp ./vitawiki.xyz.in ./henkaku && cd ./henkaku && git tag v11.1 && ./build.sh vitawiki.xyz.in && cd ..

rm -rf ./go
mkdir -p ./go/pkg/
cp ./henkaku/output/henkaku.skprx ./go/pkg
cp ./henkaku/output/henkaku.suprx ./go/pkg
cp ./henkaku/output/web/exploit.html ./go
cp ./henkaku/output/web/henkaku.bin ./go
cp ./henkaku/output/web/payload.js ./go
cp ./taiHEN/build/taihen.skprx ./go/pkg

rm -f ./vitawiki.xyz.in
