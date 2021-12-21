@echo off

echo "Clearing Cache";
rmdir /S /Q C:\dev\apps\squid\var\cache\
echo "Cache cleared";
echo "Regenerating Cache";
cd C:\dev\apps\squid\sbin && squid.exe -z -f C:\dev\apps\squid\etc\squid.conf
echo "Cache refreshed, starting squid proxy server";
cd C:\dev\apps\squid\sbin && squid.exe -f C:\dev\apps\squid\etc\squid.conf -d 2

pause
