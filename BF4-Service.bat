@echo off
NET START PnkBstrA
NET START PnkBstrB
start "" "http://battlelog.battlefield.com/bf4/"
pause

NET STOP PnkBstrA
NET STOP PnkBstrB

sc config PnkBstrA start=disabled
sc config PnkBstrB start=disabled

pause