FROM alpine:latest

ARG VER
LABEL version=$VER
LABEL maintainer="Jat <chat@jat.email>"

COPY frp/ /opt/frp/
WORKDIR /opt/frp/
CMD ["/opt/frp/frps", "-c", "/opt/frp/frps.ini"]
