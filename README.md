# squid-server
A simple working squid server for windows, not very secure, some config editing needed.

## instructions
- unzip
- open squid/etc/squid.conf file
- replace all "C:/Users/yusuf.gunduz/Desktop/" with the directory that extracted squid folder is in
- open squid/sbin folder in terminal 
- run command below to create cache stuff(edit where your squid folder is)
squid -z -f C:/Users/yusuf.gunduz/Desktop/squid/etc/squid.conf
.\squid.exe -z -f C:/Users/yusuf.gunduz/Desktop/squid/etc/squid.conf
- run command below to start cache server(or run the start.bat file in the main squid directory-edit where your squid folder is)
.\squid.exe -f C:\Users\yusuf.gunduz\Desktop\squid\etc\squid.conf -d 2
- use proxy like this:
<squid's running local ip address>:3128
