FROM debian:bookworm-20250407-slim

RUN apt-get update && \
	apt-get -y upgrade && \
	echo 'deb http://ftp.br.debian.org/debian sid main' >> '/etc/apt/sources.list' && \
	apt-get -y update && \
	mkdir -p /usr/share/man/man1

RUN apt-get install openjdk-21-jdk-headless curl -y

WORKDIR /minecraft

# Agree with EULA
RUN echo "eula=true" > /minecraft/eula.txt

RUN curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.21.5/0.16.13/1.0.3/server/jar

ENV JAVA_OPTS="-Xmx4G -Xms1G -XX:SoftMaxHeapSize=3G -XX:+UnlockExperimentalVMOptions -XX:+UseZGC"

EXPOSE 25565

CMD ["java", "-Xmx2G", "-jar", "fabric-server-mc.1.21.5-loader.0.16.13-launcher.1.0.3.jar", "nogui"]
