FROM codercom/code-server:2.preview.11-vsc1.37.0

USER root

ENV GOROOT=/root/go
ENV GOPATH=/home/coder/go
ENV PATH=$PATH:/root/go/bin:/home/coder/go/bin
RUN cd /root \
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
    && export DEBIAN_FRONTEND=noninteractive \
    && apt install tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY .gitconfig /root/.gitconfig