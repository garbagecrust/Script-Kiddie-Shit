@echo off

::Who wants to be a botnet node? Not me!
ECHO if this fails, re run as Admin...

::Enable the service to run:
NET START PnkBstrA
NET START PnkBstrB
ECHO starting web connection:
start "" "http://battlelog.battlefield.com/bf4/"
pause

::Stop the service 
NET STOP PnkBstrA
NET STOP PnkBstrB

::pesky bastard sets itself to auto... not cool man. 
ECHO disabling services...
sc config PnkBstrA start=demand
sc config PnkBstrB start=demand
ECHO done...
pause