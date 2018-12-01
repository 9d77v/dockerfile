FROM node:10.1.0-alpine

COPY ./core-files /tmp

#add build tools
RUN mv /tmp/repositories /etc/apk/repositories \
    && mv /tmp/ss-local-1.2.1 /bin/ss-local \
    && apk add --no-cache  curl \
    tar \
    vim \
    git \
    privoxy \
    fish \
    iptables \
    && sed -i "s/\/bin\/ash/\/usr\/bin\/fish/g"  /etc/passwd \
    && echo 'forward-socks5   /   127.0.0.1:1080 .' >> /etc/privoxy/config \
    && cd /tmp/oh-my-fish && chmod 777 bin/install \
    && bin/install --offline --noninteractive   \
    && yarn global add nodemon \
    tslint \
    typescript \
    protobufjs \
    ts-node \
    chalk@^1.1.3 \
    jsdoc@^3.5.5 \
    tmp@0.0.33 \
    uglify-js@^2.8.29 \
    espree@^3.5.3 \
    escodegen@^1.9.0 \
    estraverse@^4.2.0 \
    minimist@^1.2.0 \
    mocha --ignore-platform --emoji --registry=https://registry.npm.taobao.org \
    && apk add  --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" >  /etc/timezone \
    && apk del tzdata 

COPY my.fish /root/.config/fish/conf.d/my.fish

#7000 for app
#35729 for hot reload
#9229 for debug
EXPOSE 7000 35729 9229

CMD [ "/usr/bin/fish" ]
#docker run -it --rm --name node-dev -p 7000:7000 -v $PWD:/root/app registry.cn-beijing.aliyuncs.com/9d77v/node:10.1.0