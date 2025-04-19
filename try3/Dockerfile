FROM openjdk:21-jdk-slim-bookworm

WORKDIR /server

RUN apt-get update && apt-get install -y curl && \
	curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.21.5/0.16.13/1.0.3/server/jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

COPY ./server/server.properties /server/
COPY ./server/mods/ /server/mods/
COPY ./server/world/ /server/world/

CMD ["tail", "-f", "/dev/null"]
