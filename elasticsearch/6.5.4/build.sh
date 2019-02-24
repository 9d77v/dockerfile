echo "check if command 'sudo' exist"
SUDO=sudo
if command -v sudo >/dev/null 2>&1; then
    echo 'sudo exist'
else
    echo 'sudo not exist'
    SUDO=""
fi
if [ ! -d "ik" ]; then
    wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.5.4/elasticsearch-analysis-ik-6.5.4.zip 
    mkdir ik
    $SUDO mv elasticsearch-analysis-ik-6.5.4.zip ./ik
    cd ik
    unzip elasticsearch-analysis-ik-6.5.4.zip
    $SUDO rm -rf elasticsearch-analysis-ik-6.5.4.zip
fi

$SUDO docker build -t 9d77v/elasticsearch:6.5.4 .
$SUDO docker push 9d77v/elasticsearch:6.5.4