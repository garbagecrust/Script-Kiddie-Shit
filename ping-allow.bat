@echo off
netsh advfirewall firewall add rule profile=any name="PING" protocol=icmpv4 dir=in action=allow
pause