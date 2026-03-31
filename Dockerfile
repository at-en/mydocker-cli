# 使用官方镜像作为基础，如果是从源码构建，可以改用 golang 或 python 镜像
FROM eceasy/cli-proxy-api:latest

# 设置工作目录，需与你的 Compose 文件挂载路径匹配
WORKDIR /CLIProxyAPI

# 接收构建参数
ARG VERSION=dev
ARG COMMIT=none
ARG BUILD_DATE=unknown

# 设置环境变量，将参数注入到容器内
ENV VERSION=$VERSION \
    COMMIT=$COMMIT \
    BUILD_DATE=$BUILD_DATE

# 暴露你的服务端口（根据 Compose 文件）
EXPOSE 8317 8085 1455 54545 51121 11451

# 启动命令 (请根据该镜像的实际启动脚本修改)
CMD ["./cli-proxy-api"]
