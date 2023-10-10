FROM alpine:3.18.3

COPY ./src /app

WORKDIR /app

CMD ./example.sh
