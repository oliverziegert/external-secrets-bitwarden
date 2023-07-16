FROM debian:12.0

ENV BW_CLI_VERSION=2023.7.0

VOLUME [ "/bwcli/.config/Bitwarden CLI" ]

RUN apt update && \
    apt install -y wget unzip && \
    wget https://github.com/bitwarden/clients/releases/download/cli-v${BW_CLI_VERSION}/bw-linux-${BW_CLI_VERSION}.zip && \
    unzip bw-linux-${BW_CLI_VERSION}.zip && \
    chmod +x bw && \
    mv bw /usr/local/bin/bw && \
    rm -rfv *.zip && \
    apt clean autoclean && \
    apt autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ && \
    groupadd --gid 7001 bwcli && \
    useradd -c "Service user for bitwarden cli" --home-dir /bwcli --gid 7001 --no-user-group --no-create-home --shell /sbin/nologin --uid 7001 bwcli && \
    mkdir /bwcli && \
    chown 7001:7001 /bwcli && \
    chmod 700 /bwcli

COPY --chmod=755 entrypoint.sh /

USER bwcli

CMD ["/entrypoint.sh"]