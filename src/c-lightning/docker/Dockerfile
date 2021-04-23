FROM debian:buster-slim as builder
RUN apt-get update && apt-get install -y wget nodejs npm
WORKDIR /root/plugins/
RUN wget https://github.com/Ride-The-Lightning/c-lightning-REST/archive/v0.4.3.tar.gz
RUN tar -xvf v0.4.3.tar.gz
WORKDIR /root/plugins/c-lightning-REST-0.4.3
RUN npm install --only=prod


FROM elementsproject/lightningd as final

COPY ./plugins/trustedcoin_linux_amd64 /root/plugins/trustedcoin
COPY ./config /root/.lightning/config

WORKDIR /root/plugins
RUN chmod +x trustedcoin

RUN apt update
RUN apt-get -y install nodejs
COPY --from=builder /root/plugins/c-lightning-REST-0.4.3 /root/plugins/c-lightning-REST

WORKDIR /
EXPOSE 9735 9835
ENTRYPOINT  [ "/usr/bin/tini", "-g", "--", "./entrypoint.sh" ]