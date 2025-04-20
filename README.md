# Minecraft - Docker environment for Fabric Server

## Environment Description

Fabric .jar source: https://meta.fabricmc.net/v2/versions/loader/1.21.5/0.16.13/1.0.3/server/jar

## Commands Summary

- Run container

```bash
docker compose up -d
```

- Run fabric server

```bash
docker exec -it minecraft-server bash # Enter inside the container
./start.sh # Run java command to start the server
stop # stop the server safely
```

By running `./start.sh` it you can still type commands as you were in the console of the fabric server.

## Port Forwarding

[Router Port Forwarding](/docs/router-port-forwarding.png)
