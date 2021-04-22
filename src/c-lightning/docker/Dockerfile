FROM elementsproject/lightningd

COPY ./config /root/.lightning/config
COPY ./plugins/trustedcoin_linux_amd64 /root/plugins/trustedcoin
WORKDIR /root/plugins
RUN chmod +x trustedcoin

WORKDIR /
EXPOSE 9735 9835
ENTRYPOINT  [ "/usr/bin/tini", "-g", "--", "./entrypoint.sh" ]