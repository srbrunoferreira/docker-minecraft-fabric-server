FROM debian:bookworm-20250407-slim

LABEL maintainer="srbrunoferreira@outlook.com" \
	version="1.0.0" \
	description="Simple Minecraft Fabric Server on Debian Bookworm with JRE 21 headless"

COPY OpenJDK21U-jre_x64_linux_hotspot_21.0.7_6.tar.gz /tmp/

RUN apt-get update && apt-get install -y tar && \
	tar -xzf /tmp/OpenJDK21U-jre_x64_linux_hotspot_21.0.7_6.tar.gz -C /opt

WORKDIR /server
