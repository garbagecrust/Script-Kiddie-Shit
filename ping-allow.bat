@echo off
echo Disable ICMPv4 firewall rule: 
netsh advfirewall firewall add rule profile=any name="PING" protocol=icmpv4 dir=in action=allow
pause