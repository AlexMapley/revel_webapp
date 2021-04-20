FROM golang:latest

COPY ./ /src/

RUN go get github.com/revel/cmd/revel

WORKDIR /src

ENTRYPOINT revel run -p 9001 -a revel_webapp
