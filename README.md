# docker-headscale-nginx
docker headscale  peer-to-peer

docker headscale 点对点 网络


# 使用方法

```bash
git clone https://github.com/foxiswho/docker-headscale-nginx.git
```
## 1.修改 docker-compose.yml 端口
nginx 端口号是 63289
如果需要，可以修改成你自己的端口号

## 2.修改 nginx 配置文件
`nginx/conf.d/headscale.conf`

修改 文件中的 域名和端口号，修改成你自己的
```bash
    listen       63289;
    server_name  h.foxwho.com;
```
## 3.修改 headscale 配置文件
`headscale/confi/config.yaml`

主要修改配置域名和外部端口号，其他的可以默认
```bash
server_url: http://h.foxwho.com:63289
```

## 最后启动
```bash
chmod +x ./start.sh && ./start.sh
```