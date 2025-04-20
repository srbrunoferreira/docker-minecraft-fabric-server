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

# Performane improved command:
java -Xmx3G \
  -XX:+UseG1GC \
  -XX:MaxGCPauseMillis=130 \
  -XX:+UnlockExperimentalVMOptions \
  -XX:+DisableExplicitGC \
  -XX:+AlwaysPreTouch \
  -XX:G1NewSizePercent=28 \
  -XX:G1HeapRegionSize=16M \
  -XX:G1ReservePercent=20 \
  -XX:G1MixedGCCountTarget=3 \
  -XX:InitiatingHeapOccupancyPercent=10 \
  -XX:G1MixedGCLiveThresholdPercent=90 \
  -XX:G1RSetUpdatingPauseTimePercent=0 \
  -XX:SurvivorRatio=32 \
  -XX:MaxTenuringThreshold=1 \
  -XX:G1SATBBufferEnqueueingThresholdPercent=30 \
  -XX:G1ConcMarkStepDurationMillis=5 \
  -XX:G1ConcRSHotCardLimit=16 \
  -XX:G1ConcRefinementServiceIntervalMillis=150 \
  -jar fabric-server-mc.1.21.5-loader.0.16.13-launcher.1.0.3.jar nogui

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

## Improvements

- Use debian-slim-bookworm
- Install JRE only
- Install mod for better 
