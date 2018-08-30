FROM alpine:latest

ARG version
LABEL version=$version
LABEL maintainer="Jat <chat@jat.email>"

COPY frp/ /opt/frp/
WORKDIR /opt/frp/
CMD ["/opt/frp/frps", "-c", "/opt/frp/frps.ini"]
