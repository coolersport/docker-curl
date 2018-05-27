FROM alpine:3.7

RUN addgroup alpine && adduser -s /bin/sh -D -G alpine alpine \
 && apk add --update curl \
 && apk del wget \
 && rm -rf /apk /tmp/* /var/cache/apk/* /bin/* /sbin/*

USER alpine

ENTRYPOINT ["curl"]

