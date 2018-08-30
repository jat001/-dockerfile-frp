FROM alpine:latest

ARG version
LABEL version=$version
LABEL maintainer="Jat <chat@jat.email>"

WORKDIR /opt/frp
COPY frp .
CMD ["./frps", "-c", "frps.ini"]
