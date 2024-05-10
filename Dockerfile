FROM alpine:latest

RUN apk upgrade --no-cache && apk add --no-cache bash curl git coreutils ca-certificates
RUN curl -L https://codecov.io/bash > codecov && \
    chmod +x codecov && \
    mv ./codecov /bin

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
