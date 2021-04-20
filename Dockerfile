FROM golang:latest

COPY ./ /src/

RUN go get github.com/revel/cmd/revel \
    && go get -u github.com/revel/cmd/revel

WORKDIR /src

EXPOSE 9000

RUN revel build revel_webapp app dev
