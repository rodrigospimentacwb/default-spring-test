FROM alpine:latest

WORKDIR /app

ADD run.sh /app

RUN apk update && \
    apk upgrade && \
    apk add bash && \
    apk add openjdk11 && \
    apk add maven && \
    apk add git && \
    chmod +x /app/run.sh

EXPOSE 8080

ENTRYPOINT ["/app/run.sh"]
