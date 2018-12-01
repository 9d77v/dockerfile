#!/bin/sh

echo "check if command 'sudo' exist"
sudo=""
if command -v sudo >/dev/null 2>&1; then
    echo 'sudo exist'
    sudo="sudo"
fi

$sudo docker build -t 9d77v/python:scrapy .
$sudo docker push 9d77v/python:scrapy