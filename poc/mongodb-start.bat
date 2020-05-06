docker run --name mongodb-delivery -p 27017:27017 -d mongo:3.4.22-xenial
docker run --name mongodb-order -p 27018:27017 -d mongo:3.4.22-xenial
docker run --name mongodb-kitchen -p 27019:27017 -d mongo:3.4.22-xenial

docker ps -a