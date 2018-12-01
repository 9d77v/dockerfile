FROM golang:1.11.2-alpine3.8

ENV GO111MODULE=on
ENV CGO_ENABLED=0
COPY ./core-files /tmp

#add useful tools
RUN mv /tmp/repositories /etc/apk/repositories \
    && mv /tmp/ss-local-1.2.1 /bin/ss-local \
    && apk add --no-cache \
    curl \
    tar \
    vim \
    git \
    privoxy \
    fish \
    protobuf \
    openssh \
    upx \
    && sed -i "s/\/bin\/ash/\/usr\/bin\/fish/g"  /etc/passwd \
    && echo 'forward-socks5   /   127.0.0.1:1080 .' >> /etc/privoxy/config \
    && cd /tmp && git clone https://github.com/oh-my-fish/oh-my-fish  \
    && cd /tmp/oh-my-fish && chmod 777 bin/install \
    && bin/install --offline --noninteractive   \
    && apk add  --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" >  /etc/timezone \
    && apk del tzdata 

COPY go/1.11.2/go/bin /go/bin
COPY go/1.11.2/go/src /go/src
COPY go/1.11.2/go/pkg /go/pkg

COPY my.fish /root/.config/fish/conf.d/my.fish

#7000 for rpc port
#7001 for http port
#7002 for debug port
EXPOSE 7000 7001 7002

COPY go/1.11.2/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]