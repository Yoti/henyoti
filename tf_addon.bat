@echo off
if not exist tf_addon md tf_addon
cd tf_addon
md pkg\sce_sys\package
md pkg\sce_sys\livearea\contents
cd pkg
wget -q --show-progress https://github.com/RealYoti/gamecard-microsd/releases/download/v1.7-uo/gamesd.skprx
wget -q --show-progress http://henkaku.xyz/go/pkg/eboot.bin
wget -q --show-progress -O sce_sys\param.sfo http://henkaku.xyz/go/pkg/sce_sys/param.sfo
wget -q --show-progress -O sce_sys\icon0.png http://henkaku.xyz/go/pkg/sce_sys/icon0.png
wget -q --show-progress -O sce_sys\package\head.bin http://henkaku.xyz/go/pkg/sce_sys/package/head.bin
wget -q --show-progress -O sce_sys\livearea\contents\bg.png http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/bg.png
wget -q --show-progress -O sce_sys\livearea\contents\install_button.png http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/install_button.png
wget -q --show-progress -O sce_sys\livearea\contents\startup.png http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/startup.png
wget -q --show-progress -O sce_sys\livearea\contents\template.xml http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/template.xml
cd ..
cd ..