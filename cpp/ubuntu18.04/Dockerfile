FROM ubuntu:18.04

RUN  apt-get update \
    &&  apt-get install -y libc6 \
    libc6-dbg \
    libc6-dev \
    glibc-doc \
    libstdc++6 \
    build-essential \
    gdb \
    wget \
    libevent-dev \
    libboost-dev \
    git \
    curl \
    unzip \
    tar

# 安装hiredis
RUN cd /tmp && wget https://github.com/redis/hiredis/archive/v0.14.0.tar.gz \
    && tar -xzvf v0.14.0.tar.gz \
    && cd hiredis-0.14.0  \
    && make  \
    && make install \
    && ldconfig /usr/local/lib
    
