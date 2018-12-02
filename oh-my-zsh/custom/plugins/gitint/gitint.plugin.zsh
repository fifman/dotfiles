function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

alias szgit="git -c http.proxy= -c https.proxy= -c user.name=fengyc -c user.email=fengyc@isc.szpl.gov -c http.sslcainfo=/etc/ssl/certs/traefik.crt"
proxy="socks5://127.0.0.1:1180"
alias progit="HTTP_PROXY=$proxy HTTPS_PROXY=$proxy git -c http.proxy=$proxy -c https.proxy=$proxy  -c user.name=fifman -c user.email=fifman@163.com"
