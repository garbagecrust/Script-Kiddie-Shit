@echo off
NET STOP VMAuthdService
NET START vmx86
NET START VMAuthdService

ECHO Ready to lauch VMware...
pause
start "" "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe"
