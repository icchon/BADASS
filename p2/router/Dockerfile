FROM alpine:latest

RUN apk add --no-cache frr busybox iproute2

RUN sed -i 's/zebra=no/zebra=yes/' /etc/frr/daemons && \
    sed -i 's/bgpd=no/bgpd=yes/' /etc/frr/daemons && \
    sed -i 's/ospfd=no/ospfd=yes/' /etc/frr/daemons && \
    sed -i 's/isisd=no/isisd=yes/' /etc/frr/daemons

ENTRYPOINT ["sh", "-c", "/usr/lib/frr/frrinit.sh start && tail -f /dev/null"]

CMD ["sh"]
