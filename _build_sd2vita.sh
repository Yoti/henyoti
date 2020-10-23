#!/bin/bash
export LC_TIME=en_US.UTF8

rm -rf ./taiHEN
git clone --recurse-submodules https://github.com/yifanlu/taiHEN
cp ./taiHEN.patch ./taiHEN && cd ./taiHEN && git apply ./taiHEN.patch && cd ..
cp ./build_satellite.sh ./taiHEN && cd ./taiHEN && ./build_satellite.sh && cd ..

rm -f ./vitawiki.xyz.in && cp ./sd2vita.in.cfg ./vitawiki.xyz.in
echo TAIHEN_CRC32=0x$(crc32 ./taiHEN/build/taihen.skprx) >> ./vitawiki.xyz.in

rm -rf ./henkaku
git clone --recurse-submodules https://github.com/henkaku/henkaku
cp ./henkaku.patch ./henkaku && cd ./henkaku && git apply ./henkaku.patch && cd ..
cp ./bootstrap.patch ./henkaku && cd ./henkaku && git apply ./bootstrap.patch && cd ..
cp ./vitawiki.xyz.in ./henkaku && cd ./henkaku && git tag v11.1 && ./build.sh vitawiki.xyz.in && cd ..

rm -rf ./tf
mkdir -p ./tf/pkg/
cp ./henkaku/output/henkaku.skprx ./tf/pkg
cp ./henkaku/output/henkaku.suprx ./tf/pkg
cp ./henkaku/output/web/exploit.html ./tf
cp ./henkaku/output/web/henkaku.bin ./tf
cp ./henkaku/output/web/payload.js ./tf
cp ./taiHEN/build/taihen.skprx ./tf/pkg

rm -f ./vitawiki.xyz.in
