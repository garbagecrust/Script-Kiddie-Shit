@echo off
NET STOP Browser
NET STOP LanmanServer
ECHO Press any key to restart services and resume normal network operation:
pause
NET START LanmanServer
NET START Browser