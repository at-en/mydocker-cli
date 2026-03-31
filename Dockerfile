FROM openlist/openlist:latest  # 请替换为该挂载工具真实的镜像名
EXPOSE 5000                   # 替换为该工具的默认端口
CMD ["./openlist"]
