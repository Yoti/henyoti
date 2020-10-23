@echo off
title 0x80af5022 fix by Yoti
echo 0x80af5022 fix by Yoti
if not %~p0==\ (
	echo Place this file to the root of the MicroSD card then run again
	goto thisistheend
)
mkdir app
mkdir appmeta
mkdir bgdl
mkdir cache
mkdir data
mkdir license\app
mkdir patch
mkdir temp
mkdir user\00\savedata
echo The job was done with success!
:thisistheend
pause