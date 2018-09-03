FROM golang:1.10.4

WORKDIR /go/src/app
COPY ./src .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]