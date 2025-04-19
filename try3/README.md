# Minecraft - Docker environment for Fabric Server

## Commands Summary

- Run container

```bash
docker compose up --build -d
```

- Run fabric server

```bash
docker exec -it minecraft-server bash # Enter inside the container
java -Xmx2G -jar fabric-server-mc.1.21.5-loader.0.16.13-launcher.1.0.3.jar nogui # Run fabric server
```

By running `java -Xmx2G -jar fabric-server-mc.1.21.5-loader.0.16.13-launcher.1.0.3.jar nogui` it you can still type commands as you were in the console of the fabric server.

## Allowing Access to the Fabric Server from the internet

Source: https://jwstanly.com/blog/article/Port+Forwarding+WSL+2+to+Your+LAN/

**find out WSL IP**

```bash
wsl hostname -I
```

**Route from Windows to WSL**

```bash
netsh interface portproxy add v4tov4 listenport=25565 listenaddress=0.0.0.0 connectport=25565 connectaddress=172.23.18.19
```

**Add inbound rule to Windows Firewall**

```bash
New-NetFirewallRule -DisplayName "WSL2 Port Bridge for Minecraft Fabric Server" -Direction Inbound -Action Allow -Protocol TCP -LocalPort 25565
```

**Show forwarding ports**


```bash
netsh interface portproxy show v4tov4
```
