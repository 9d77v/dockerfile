echo "check if command 'sudo' exist"
SUDO=sudo
if command -v sudo >/dev/null 2>&1; then
    echo 'sudo exist'
else
    echo 'sudo not exist'
    SUDO=""
fi
if [ ! -d "ik" ]; then
    wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v5.6.4/elasticsearch-analysis-ik-5.6.4.zip 
    unzip elasticsearch-analysis-ik-5.6.4.zip
    $SUDO mv elasticsearch ik 
    $SUDO rm -rf elasticsearch-analysis-ik-5.6.4.zip
fi

$SUDO docker build -t registry.cn-beijing.aliyuncs.com/9d77v/elasticsearch:5.6.4 .