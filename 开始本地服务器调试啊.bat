@echo off
rem 进入bat文件所在的目录
cd /d %~dp0

rem 启动Jekyll服务器并保持cmd窗口开启
start cmd /k "bundle exec jekyll serve"

rem 延时等待服务器启动（可以根据情况调整时间，单位是秒）
timeout /t 10 /nobreak >nul

rem 在默认浏览器中打开本地服务器地址
start http://127.0.0.1:4000/
