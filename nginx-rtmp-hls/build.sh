echo "check if command 'sudo' exist"
SUDO=sudo
if command -v sudo >/dev/null 2>&1; then
    echo 'sudo exist'
else
    echo 'sudo not exist'
    SUDO=""
fi

$SUDO docker build -t 9d77v/nginx-rtmp-hls:1.19.4-1.2.1 .
$SUDO docker push 9d77v/nginx-rtmp-hls:1.19.4-1.2.1