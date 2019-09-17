FROM codercom/code-server:2.1472-vsc1.38.1

USER root

ENV GOROOT=/root/go
ENV GOPATH=/home/coder/go
ENV PATH=$PATH:/root/go/bin:/home/coder/go/bin

RUN apt update \
    && apt upgrade -y \
    #Base Environment
    && export DEBIAN_FRONTEND=noninteractive \
    && apt install tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt install gcc make build-essential python-dev python-setuptools python-pip python-smbus build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl libffi-dev -y \
    #Go Environment
    && cd /root \
    && curl https://dl.google.com/go/go1.12.9.linux-amd64.tar.gz -o go.tar.gz \
    && tar -xzvf go.tar.gz  \
    && rm -r go.tar.gz \
    && mkdir /home/coder/go \
    && go get github.com/mdempsky/gocode \
    && go get github.com/uudashr/gopkgs/cmd/gopkgs \
    && go get github.com/ramya-rao-a/go-outline \
    && go get github.com/acroca/go-symbols \
    && go get golang.org/x/tools/cmd/guru \
    && go get golang.org/x/tools/cmd/gorename \
    && go get github.com/derekparker/delve/cmd/dlv \
    && go get github.com/stamblerre/gocode \
    && go get github.com/rogpeppe/godef \
    && go get github.com/ianthehat/godef \
    && go get github.com/sqs/goreturns \
    && go get golang.org/x/lint/golint \
    #Python Environment
    && curl https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz -o python.tar.gz \
    && tar -xzvf python.tar.gz \
    && rm -r python.tar.gz \
    && cd Python-3.7.2 \
    && ./configure --enable-optimizations \
    && make \
    && make install \
    && pip3 install --upgrade pip
COPY .gitconfig /root/.gitconfig