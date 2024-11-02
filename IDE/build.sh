# show build version
docker buildx version

# enable build instancd
docker buildx create --name mybuilder --use

# Create the builder
docker buildx build  --builder multi-builder --platform linux/amd64,linux/arm64  -t dangtong76/cloud-cicd --push .
docker buildx build  --platform linux/amd64,linux/arm64  -t ich0103/cloud-cicd --push .
# multi build 안되면 아래 실행
# docker build  --platform linux/amd64  -t ich0103/cloud-cicd --push .