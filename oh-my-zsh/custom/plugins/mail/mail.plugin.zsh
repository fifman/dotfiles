function parseArgs () {
    if [ "$*" = "" ]; then
        printf "input error!\n"
        exit 2
    fi
    if [[ "$1" == -? ]]; then
        printf "input error!\n"
        exit 2
    fi
    while [[ "$#" -gt 0 && "$1" != -? ]]; do
        printf "$1 "
        shift
    done
}

function buildAddresses () {
    if [[ -z "$*" ]]; then
        return
    fi
    while [[ -n "$1" ]]; do
        printf "$1@isc.szpl.gov "
        shift
    done
}

function szplmail () {
    opts=""

    while [[ $# -gt 0 ]]; do
        case "$1" in
            -t)
                shift
                opts=$opts" -t "$(buildAddresses $(parseArgs "$@"));;
            -c)
                shift
                opts=$opts" -cc "$(buildAddresses $(parseArgs "$@"));;
            -a)
                shift
                opts=$opts" -a "$(parseArgs "$@");;
            -u)
                shift
                opts=$opts" -u "$(parseArgs "$@") ;;
            -m)
                shift
                opts=$opts" -m "$(parseArgs "$@") ;;
            -*)
                echo "wrong options!"
                exit 2;;
            *)
                shift;;
        esac
    done

    sendemail -f fengyc@isc.szpl.gov -s mail.isc.szpl.gov -xu fengyc@isc.szpl.gov  -xp 110316Fyc $=opts -o tls=no
}
