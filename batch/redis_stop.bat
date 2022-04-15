@echo off
title redis-server stop
set REDIS_HOME="C:\Softwares\Redis"
color 0a
cd %REDIS_HOME%
redis-server.exe --service-stop
pause