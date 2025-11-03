@echo off
if not exist go_addon md go_addon
cd go_addon
md pkg\sce_sys\package
md pkg\sce_sys\livearea\contents
cd pkg
wget -q --show-progress http://raw.githubusercontent.com/RealYoti/VitaShell/master/release/eboot.bin
wget -q --show-progress -O sce_sys\param.sfo http://raw.githubusercontent.com/RealYoti/VitaShell/master/release/param.sfo
wget -q --show-progress -O sce_sys\icon0.png http://raw.githubusercontent.com/RealYoti/VitaShell/master/release/icon0.png
wget -q --show-progress -O sce_sys\package\head.bin http://raw.githubusercontent.com/RealYoti/VitaShell/master/release/head.bin
wget -q --show-progress -O sce_sys\livearea\contents\bg.png http://raw.githubusercontent.com/RealYoti/VitaShell/master/release/bg.png
wget -q --show-progress -O sce_sys\livearea\contents\install_button.png http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/install_button.png
wget -q --show-progress -O sce_sys\livearea\contents\startup.png http://raw.githubusercontent.com/RealYoti/VitaShell/master/release/startup.png
wget -q --show-progress -O sce_sys\livearea\contents\template.xml http://raw.githubusercontent.com/RealYoti/VitaShell/master/release/template.xml
cd ..
cd ..