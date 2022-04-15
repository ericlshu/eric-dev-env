@echo off
title redis-server start
set REDIS_HOME="C:\Softwares\Redis"
color 0a
cd %REDIS_HOME%
redis-server.exe --service-start
pause