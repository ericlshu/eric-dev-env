@echo off
title redis-server start
set MONGO_HOME="D:\Tools\mongodb\bin"
D:
color 0a
cd %MONGO_HOME%
.\mongod.exe --dbpath=..\data\db
pause