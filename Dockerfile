FROM node:latest

LABEL \
    description="A Vue development environment for Docker." \
    version=0.1 \
    author=Bang \
    maintainer="Xiaobang Shi <Xiaobang-Shi@outlook.com>" \
    reference="https://github.com/Xiaobang-Shi/vuedock"
RUN \
    #使用淘宝镜像
    npm config set registry https://registry.npm.taobao.org \
    && \
    npm install -g @vue/cli
RUN \
    #创建工作区文件夹
    mkdir /workspace

WORKDIR \
    #指定工作区文件夹
    /workspace
