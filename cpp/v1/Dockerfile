FROM alpine:3.10

COPY ./core-files /tmp

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

# add c++
RUN apk add --no-cache gcc musl-dev g++ make libuuid

# # add glibc 
RUN apk --no-cache add ca-certificates wget \
    && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
    && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.30-r0/glibc-dev-2.30-r0.apk \
    && apk add glibc-dev-2.30-r0.apk
    