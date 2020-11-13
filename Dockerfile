
FROM alpine:3.10

COPY entrypoint.sh /entrypoint.sh

RUN apk add --update docker-cli curl

ENTRYPOINT ["/entrypoint.sh"]
