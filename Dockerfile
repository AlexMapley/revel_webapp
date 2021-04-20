FROM golang:1.15

COPY ./ /src/

RUN go get github.com/revel/revel && \
    go get github.com/revel/cmd/revel && \
    go get github.com/revel/modules/static && \
    go get github.com/garyburd/redigo/redis && \
    go get github.com/patrickmn/go-cache && \
    go get github.com/bradfitz/gomemcache/memcache

WORKDIR /src

RUN cd revel_webapp && go mod tidy

EXPOSE 9000

RUN revel build revel_webapp app dev
