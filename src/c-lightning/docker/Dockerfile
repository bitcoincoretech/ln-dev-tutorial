FROM elementsproject/lightningd

COPY ./plugins/trustedcoin_linux_amd64 /root/plugins/trustedcoin
COPY ./config /root/.lightning/config

WORKDIR /root/plugins
RUN chmod +x trustedcoin

RUN apt update
RUN apt-get -y install wget
RUN apt-get -y install nodejs npm

WORKDIR /root/plugins/c-lightning-REST
RUN wget https://github.com/Ride-The-Lightning/c-lightning-REST/archive/v0.4.3.tar.gz
RUN tar -xvf v0.4.3.tar.gz
WORKDIR /root/plugins/c-lightning-REST/c-lightning-REST-0.4.3
RUN npm install --only=prod


WORKDIR /
EXPOSE 9735 9835
ENTRYPOINT  [ "/usr/bin/tini", "-g", "--", "./entrypoint.sh" ]