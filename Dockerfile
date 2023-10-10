FROM alpine:3.15.4

COPY ./src /app

WORKDIR /app

CMD ./example.sh
