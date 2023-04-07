
echo "创建网络 devbase"

docker network create devbase

mkdir -p headscale/config
mkdir -p headscale/data



echo "启动"
docker-compose up -d


echo "查看命名空间"
docker exec headscale headscale ns list

echo "创建命名空间 fox"
docker exec headscale headscale ns create fox

echo "创建鉴权 客户端http鉴权 apikeys，ui界面会用到"
docker exec headscale headscale apikeys create -e 720d


echo "创建 客户端 fox 快速登陆 preauthkeys"
docker exec headscale headscale preauthkeys create -e 720d -u fox


echo "自动创建完成"