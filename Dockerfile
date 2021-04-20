FROM golang:1.15

COPY ./ /src/

RUN go get github.com/revel/revel && \
    go get github.com/revel/cmd/revel && \
    go get github.com/revel/modules/static && \
    go get github.com/garyburd/redigo/redis && \
    go get github.com/patrickmn/go-cache && \
    go get github.com/bradfitz/gomemcache/memcache

WORKDIR /src


EXPOSE 8080


# RUN cd revel_webapp && go mod tidy && \
ENTRYPOINT revel run revel_webapp 8080

# RUN revel build revel_webapp app dev && \
#     pwd && \
#     ls && \
#     chmod 777 /src/revel_webapp

# Use the revel CLI to start up our application.
# ENTRYPOINT revel run github.com/JustinBeckwith/revel-appengine dev 8080