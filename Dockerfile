FROM golang:latest 
RUN mkdir /app
ADD . /app/
WORKDIR /app 
RUN CGO_ENABLED=0 go test -v .
RUN go build -o sqrt . 
CMD ["/app/sqrt"]
