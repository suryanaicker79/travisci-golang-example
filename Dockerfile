FROM golang:1.12-alpine

WORKDIR go/src/github.com/suryanaicker79/travisci-golang-example
COPY . .

RUN go get -d -v ./...

RUN go install -v ./... && \
    CGO_ENABLED=0 GOOS=linux go test -c

CMD ["travisci-golang-example"]
