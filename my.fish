alias unset 'set --erase'

function proxy_off
    unset http_proxy
    unset https_proxy
    echo proxy off
end

function proxy_on
    export no_proxy="localhost:127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:8118"
    export https_proxy=$http_proxy
    echo proxy on
    echo curl google.com
    curl google.com
end

function startup
    nohup ss-local -c ss.conf > /tmp/ss.log 2>&1 &
    privoxy /etc/privoxy/config
    proxy_on
end

#change localhost
function ch
    set hosts (cat /etc/hosts)
    set port (ping -c1 $argv[1]|awk -F'[(|)]' 'NR==1{print $2}')
    set newHost (echo $hosts | sed -e  "s/127.0.0.1/$port/g") 
    echo $newHost > /etc/hosts
    cat /etc/hosts
end

#redirect port
function rp
    iptables -t nat -A PREROUTING -p tcp --dport 7000 -j REDIRECT --to-ports $argv[1]
end

echo "Welcome to use 9d77v's go 1.13.1 image, happy go programing!"

if test -e ss.conf
    echo 'ss.conf found,use proxy'
    startup
end
