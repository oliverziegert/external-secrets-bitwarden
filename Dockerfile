FROM debian:12.2

ENV BW_CLI_VERSION="2023.9.0"

COPY --chmod=750 setup.sh /

RUN /setup.sh &&  rm /setup.sh

COPY --chmod=755 entrypoint.sh /

USER bwcli
WORKDIR /bwcli

CMD ["/entrypoint.sh"]