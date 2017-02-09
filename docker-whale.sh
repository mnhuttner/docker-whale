# build from Dockerfile
clean.sh
docker build -t docker-whale .
docker images
docker run docker-whale

# now tag and upload to docker hub cloud
docker tag 258862802fe5 mnhuttner/docker-whale:latest
docker images
docker login -u mnhuttner -p Nojoker123
docker push mnhuttner/docker-whale

# clean up
#docker rmi docker/whalesay
#docker rmi docker-whale
clean.sh
docker images

# test from hub
docker run mnhuttner/docker-whale
clean.sh
