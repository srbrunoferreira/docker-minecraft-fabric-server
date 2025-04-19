FROM openjdk:21-jdk-slim

WORKDIR /server

# Download Fabric server jar
RUN apt-get update && apt-get install -y curl && \
	curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.21.5/0.16.13/1.0.3/server/jar

# Accept EULA
RUN echo "eula=true" > eula.txt

# Expose default Minecraft port
EXPOSE 25565

# Launch command
CMD ["java", "-Xmx2G", "-jar", "fabric-server-mc.1.21.5-loader.0.16.13-launcher.1.0.3.jar", "nogui"]
