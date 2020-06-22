FROM alpine:3.12

RUN apk --update add shunit2

WORKDIR /

COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
