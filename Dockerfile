FROM golang:1.15.6-alpine

WORKDIR /go/src

COPY ./server.go /go/src/server.go

RUN go mod init server \
    && go mod tidy \
    && go build

RUN go get -u github.com/cosmtrek/air

CMD ["air"]
