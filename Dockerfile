FROM golang:latest

COPY ./ /src/

RUN cd /src \
    && ls \
    && go clean \
    && go install ./... \
    go build

RUN chmod +x /src/entrypoint

ENTRYPOINT /src/entrypoint
