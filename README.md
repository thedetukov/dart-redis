## Requirements

Start Redis and Redis-Commander:

Created network for connecting two docker containers
```shell
docker network create redis-network;
```
Run Redis 
```shell
docker run --name my-redis --interactive --tty --rm --publish 6379:6379 -d redis 
```
Accessing the container via a terminal to use the redis-cli utility to interact with the server
```shell
docker exec -it my-redis sh
```
Run Redis-Commander (http://localhost:8081/)
```shell
docker run --name my-redis-commander --interactive --tty --rm --publish 8081:8081 --env REDIS_HOSTS=local:172.17.0.2:6379 -d rediscommander/redis-commander
```
