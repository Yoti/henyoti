@echo off
title startwww
color 1f
ipconfig /all | find "IPv4"
python3.exe -m http.server 8000