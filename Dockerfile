FROM alpine:least

RUN apk --no-cache add dnsmasq

VOLUME /etc/dnsmasq.d/
VOLUME /etc/dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT ["dnsmasq", "-k"]