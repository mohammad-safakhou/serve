FROM golang:1.18-alpine

RUN apk add curl
RUN mkdir /app
WORKDIR /app
RUN truncate -s 5M /app/temp.txt
COPY . .

EXPOSE 8100
CMD ["/app/app"]
