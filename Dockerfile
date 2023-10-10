FROM alpine:3.18.0

COPY ./src /app

WORKDIR /app

CMD ./example.sh
