FROM golang:latest

COPY ./ /src/

RUN go clean \
    && go install ./... \
    go build

RUN chmod +x /src/entrypoint

ENTRYPOINT /src/entrypoint
