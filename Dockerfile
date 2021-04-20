FROM golang:latest

COPY ./ /src/

RUN go get github.com/revel/revel && \
    go get github.com/revel/cmd/revel

WORKDIR /src

RUN cd revel_webapp && go mod tidy

EXPOSE 9000

RUN revel build revel_webapp app dev

ENTRYPOINT revelapp