FROM golang:1.11.0-alpine3.8

EXPOSE 8080
WORKDIR /go/src/app
COPY ./src .
RUN go get -d -v ./... && go install -v ./...

ENTRYPOINT ["app"]