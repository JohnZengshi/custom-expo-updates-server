@echo off

:: 设置环境变量
set HOSTNAME=https://api.pineer.cc/updates_server
set BASE_PATH=/updates_server

:: 执行 yarn build
yarn build

:: 保持命令提示符窗口打开，直到用户按键关闭
pause
