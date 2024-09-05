FROM debian:12.7

ENV BW_CLI_VERSION="2024.8.1"

COPY --chmod=750 setup.sh /

RUN /setup.sh &&  rm /setup.sh

COPY --chmod=755 entrypoint.sh /

USER bwcli
WORKDIR /bwcli

CMD ["/entrypoint.sh"]