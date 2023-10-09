
# Newer alternative is at https://squid.diladele.com/ and my config(just changed dns server ips for work) (secret gist https://gist.github.com/Kambaa/2f189a70ef3bf26ad5410947bcfefb4d)

# squid-server
An *OLDER*, simple working squid server for windows, not very secure, some config editing needed.

## instructions
- unzip to a `<YOUR_DIR>`
- open `<YOUR_DIR>/squid/etc/squid.conf` file
- replace all `<YOUR_DIR>` with appropriate directory(that squid folder is in)
- go to https://www.web2generators.com/apache-tools/htpasswd-generator create htpasswd text according to given user and password (or https://hostingcanada.org/htpasswd-generator/ on mode field, select `Apache specific salted MD5 (insecure but common)`)
- copy generated user pass info text to `squid/etc/passwd` file(replace with everything)
- open `<YOUR_DIR>/squid/sbin` folder in terminal 
- use [run.bat](run.bat) file or 
  - run command below to create cache stuff(edit where your squid folder is and `cd` to it first)
```
.\squid.exe -z -f <YOUR_DIR>/squid/etc/squid.conf
```
  - run command below to start cache server(or run the start.bat file in the main squid directory-edit where your squid folder is and `cd` to it first)
```
.\squid.exe -f <YOUR_DIR>\squid\etc\squid.conf -d 2
```
- use proxy like this:

```
<squid's running local ip address>:3128
```


# USAGE

## git 
setup no auth:
```
git config --global http.proxy http://ip:port
```
setup with auth:
```
git config --global http.proxy http://username:password@ip:port
```
revert/reset setting:
```
git config --global --unset http.proxy
```

## maven 
add this to your `settings.xml`
```
<settings>
 ... OTHER SETTINGS ...
<proxies>
   <proxy>
      <id>worklaptopproxy</id>
      <active>true</active>
      <protocol>http</protocol>
      <host>YOUR IP ADDRESS</host>
      <port>3128</port>
      <username>user</username><!-- enter username here -->
      <password>pass</password><!-- enter password here -->
      <!-- <nonProxyHosts>www.google.com|*.example.com</nonProxyHosts> -->
    </proxy>
  </proxies>
</settings>
```

## browsers
- use an addon Foxyproxy(My favorite, defining domain names and it uses proxy automatically),SwitchyOmega  etc.
- add your proxy like `<IP>:3128` (with user pass info)
  
  
## other
- find proxy setup and set it to: 
  `<IP>:3128`
- Running java apps (not tested)
 command line :  `java -Dhttp.proxyHost=YOURIP -Dhttp.proxyPort=3128`  (from https://docs.oracle.com/javase/1.5.0/docs/guide/net/proxies.html)
 
 
## Somethings to read about this: 
 - https://techencyclopedia.wordpress.com/2018/04/07/how-to-install-and-configure-squid-proxy-on-windows/
 - https://stackoverflow.com/questions/28677228/using-proxy-server-for-java-application
 - https://docs.oracle.com/javase/1.5.0/docs/guide/net/proxies.html
 - https://www.baeldung.com/java-connect-via-proxy-server
 - https://chrome.google.com/webstore/detail/proxy-switchyomega/padekgcemlokbadohgkifijomclgjgif/related?hl=en
 - https://github.com/psf/requests/issues/881
 - https://elatov.github.io/2019/01/using-squid-to-proxy-ssl-sites/
 - https://stackoverflow.com/questions/120797/how-do-i-set-the-proxy-to-be-used-by-the-jvm
 - https://docs.oracle.com/javase/6/docs/technotes/guides/net/proxies.html
 - https://stackoverflow.com/a/62311039
 - https://gist.github.com/evantoli/f8c23a37eb3558ab8765
