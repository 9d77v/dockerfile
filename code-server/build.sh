echo "check if command 'sudo' exist"
SUDO=sudo
if command -v sudo >/dev/null 2>&1; then
    echo 'sudo exist'
else
    echo 'sudo not exist'
    SUDO=""
fi

$SUDO docker build -t 9d77v/code-server:2.preview.11-vsc1.37.0 .
$SUDO docker push 9d77v/code-server:2.preview.11-vsc1.37.0