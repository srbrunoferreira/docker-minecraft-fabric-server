docker build -t fabric-server .
docker run -p 25565:25565 --name fabric-mc fabric-server
