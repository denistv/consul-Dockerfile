FROM ubuntu:latest

ENV CONSUL_DL_URL="https://releases.hashicorp.com/consul/0.6.4/consul_0.6.4_linux_amd64.zip"
RUN apt-get update && apt-get install -y wget unzip \
    && wget -O /opt/consul.zip ${CONSUL_DL_URL} \
    && cd /usr/local/bin && unzip /opt/consul.zip \
