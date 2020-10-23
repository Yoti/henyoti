@echo off
if exist molecularShell rd /s /q molecularShell
md molecularShell\sce_sys\package
md molecularShell\sce_sys\livearea\contents
cd molecularShell
wget -q --show-progress http://henkaku.xyz/go/pkg/eboot.bin
wget -q --show-progress -O sce_sys\param.sfo http://henkaku.xyz/go/pkg/sce_sys/param.sfo
wget -q --show-progress -O sce_sys\icon0.png http://henkaku.xyz/go/pkg/sce_sys/icon0.png
wget -q --show-progress -O sce_sys\package\head.bin http://henkaku.xyz/go/pkg/sce_sys/package/head.bin
wget -q --show-progress -O sce_sys\livearea\contents\bg.png http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/bg.png
wget -q --show-progress -O sce_sys\livearea\contents\install_button.png http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/install_button.png
wget -q --show-progress -O sce_sys\livearea\contents\startup.png http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/startup.png
wget -q --show-progress -O sce_sys\livearea\contents\template.xml http://henkaku.xyz/go/pkg/sce_sys/livearea/contents/template.xml
cd ..
if exist molecularShell.vpk del /q molecularShell.vpk
7z a molecularShell.vpk .\molecularShell\*