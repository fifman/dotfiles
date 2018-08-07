# export USER_MEM_ARGS="-Xmx1024m -XX:MaxPermSize=256m"
export MW_HOME=/opt/wls1036_dev/

SOA_DOMAIN=/opt/wls_domains/soa_domain/bin
PLATFORM_DOMAIN=/opt/wls_domains/platform_domain/bin

function wlsmgr () {
    function execDomain () {
        if [ $2 = "stop" ] || [ $2 = "restart" ]; then
            bash "$1/stopWebLogic.sh" weblogic weblogic10
        fi
        if [ $2 = "start" ] || [ $2 = "restart" ]; then
            nohup bash "$1/startWebLogic.sh" &>/dev/null &
        fi
    }

    if [ $1 = "soa" ]; then 
        execDomain "$SOA_DOMAIN" "$2"
    elif [ $1 = "platform" ]; then 
        execDomain "$PLATFORM_DOMAIN" "$2"
    fi
}

