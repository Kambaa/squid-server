# squid-server
A simple working squid server for windows, not very secure, some config editing needed.

## instructions
- unzip
- open squid/etc/squid.conf file
- replace all "C:/Users/yusuf.gunduz/Desktop/" with the directory that extracted squid folder is in
- open squid/sbin folder in terminal 
- run command below to create cache stuff(edit where your squid folder is and `cd` to it first)
```
.\squid.exe -z -f C:/Users/yusuf.gunduz/Desktop/squid/etc/squid.conf
```

- run command below to start cache server(or run the start.bat file in the main squid directory-edit where your squid folder is and `cd` to it first)
```
.\squid.exe -f C:\Users\yusuf.gunduz\Desktop\squid\etc\squid.conf -d 2
```
- use proxy like this:

```
<squid's running local ip address>:3128
```


# USAGE

## maven 
add this to your settings.xml 
```
</settings>
 ... OTHER SETTINGS ...
<proxies>
   <proxy>
      <id>worklaptopproxy</id>
      <active>true</active>
      <protocol>http</protocol>
      <host>YOUR IP ADDRESS</host>
      <port>3128</port>
      <!-- <nonProxyHosts>www.google.com|*.example.com</nonProxyHosts> -->
    </proxy>
  </proxies>
</settings>
```

## browsers
- use an addon (SwitchyOmega, Foxyproxy etc.)
- add your proxy like <IP>:3128 (no auth)
  
  
## other
- find proxy setup and set it to: 
  <IP>:3128
