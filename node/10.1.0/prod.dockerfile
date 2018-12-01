FROM node:10.1.0-alpine

RUN  yarn global add pm2 typescript ts-node --registry https://registry.npm.taobao.org
#docker build -t registry.cn-beijing.aliyuncs.com/9d77v/node:10.1.0-prod -f prod.dockerfile .