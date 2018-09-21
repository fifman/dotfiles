function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

alias szgit="git -c http.proxy= -c https.proxy= -c user.name=fengyc -c user.email=fengyc@isc.szpl.gov -c http.sslcainfo=/etc/ssl/certs/traefik.crt"
