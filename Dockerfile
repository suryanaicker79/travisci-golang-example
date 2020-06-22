FROM golang:1.12-alpine

RUN mkdir /app
WORKDIR /app
COPY . .

RUN go get -d -v ./...

RUN go install -v ./... && \
    CGO_ENABLED=0 GOOS=linux go test -c

CMD ["/app"]
