FROM alpine:3.11

MAINTAINER Simon Rance <sirance@gmail.com>

RUN apk --update add --no-cache bind

EXPOSE 53/tcp 53/udp

VOLUME [ "/etc/bind", "/var/bind/" ]

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
