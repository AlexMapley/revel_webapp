FROM golang:latest

COPY ./ /src/

RUN go clean \
    && go install ./... \
    go build
