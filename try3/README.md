docker stop fabric-mc && docker rm fabric-mc && docker build -t fabric-server . && docker run -d -p 25565:25565 --name fabric-mc fabric-server
docker exec -it fabric-mc bash
docker start 61a8b7c109b76b0796c4cd729ee72d4902c5825409f7f20a8bba12b5499d4227

java -Xmx2G -jar fabric-server-mc.1.21.5-loader.0.16.13-launcher.1.0.3.jar nogui

# CMD ["java", "-Xmx2G", "-jar", "fabric-server-mc.1.21.5-loader.0.16.13-launcher.1.0.3.jar", "nogui"]

The only problem now is:

I am running a Minecraft Fabric Server container an I can access it from my host Windows by using localhost as server IP on Minecraft client.

However, my friends connected to our Hamachi cannot access the server.
