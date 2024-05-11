FROM --platform=linux/amd64 alpine:latest

RUN apk upgrade --no-cache && apk add --no-cache bash curl git coreutils ca-certificates

RUN curl -Os https://cli.codecov.io/latest/linux/codecov
RUN chmod +x codecov
RUN mv codecov /bin/codecov

ADD ./entrypoint.sh /bin

ENTRYPOINT ["entrypoint.sh"]
