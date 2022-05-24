FROM golang:1.18.1-alpine3.15
RUN mkdir /app

WORKDIR /app

# Adding necessary files
ADD . .

RUN go build -o main .
EXPOSE 8080
CMD ["/app/main"]