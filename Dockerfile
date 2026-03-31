# 使用官方镜像作为基础
FROM eceasy/cli-proxy-api:latest

# 设置工作目录
WORKDIR /CLIProxyAPI

# 【关键：添加这一行】将你 GitHub 仓库里的 config.yaml 复制到容器的对应位置
COPY config.yaml /CLIProxyAPI/config.yaml

# 接收构建参数
ARG VERSION=dev
ARG COMMIT=none
ARG BUILD_DATE=unknown

# 设置环境变量
ENV VERSION=$VERSION \
    COMMIT=$COMMIT \
    BUILD_DATE=$BUILD_DATE

# 暴露端口（Zeabur 主要会用到你填写的 8317）
EXPOSE 8317 8085 1455 54545 51121 11451

# 启动命令
CMD ["./cli-proxy-api"]
