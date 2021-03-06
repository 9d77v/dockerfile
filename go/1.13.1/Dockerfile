FROM golang:1.13.1-alpine3.10

ENV CGO_ENABLED=0
COPY ./core-files /tmp

# add some tools
RUN echo "http://mirrors.aliyun.com/alpine/v3.10/main/" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.10/community/" >> /etc/apk/repositories \
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
    busybox-extras \
    && sed -i "s/\/bin\/ash/\/usr\/bin\/fish/g"  /etc/passwd \
    && echo 'forward-socks5   /   127.0.0.1:1080 .' >> /etc/privoxy/config \
    && cd /tmp && git clone https://github.com/oh-my-fish/oh-my-fish  \
    && cd /tmp/oh-my-fish && chmod 777 bin/install \
    && bin/install --offline --noninteractive   \
    && apk add  --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" >  /etc/timezone \
    && apk del tzdata 

ENV GOPROXY=https://goproxy.cn

# 安装 docker
RUN curl -O https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz \
 && tar zxvf docker-latest.tgz \
 && cp docker/docker /usr/local/bin/ \
 && rm -rf docker docker-latest.tgz

# 安装docker-compose
RUN  apk add --no-cache \
    py-pip \
    python-dev \
    libffi-dev \
    openssl-dev \
    gcc \
    libc-dev \
    make \
    && pip install docker-compose

 # 安装 go 库
RUN go get -u github.com/golang/protobuf/protoc-gen-go \
    && go get -u golang.org/x/lint/golint 

COPY my.fish /root/.config/fish/conf.d/my.fish

# 7000 for rpc port
# 7001 for http port
# 7002 for debug port
EXPOSE 7000 7001 7002

COPY go/1.13.1/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]