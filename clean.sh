#set -x
docker images
docker ps -a
# stop running containers
docker stop $(docker ps -a -q) 2>/dev/null
# Delete all containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi --force $(docker images -q)
docker images
docker ps -a


