FROM golang:latest

COPY ./ /src/

RUN go get github.com/revel/cmd/revel

# RUN cd /src/revel_webapp \
#     && ls \
#     && go clean \
#     && go install ./...

ENTRYPOINT revel run -a revel_webapp
