FROM golang:1.17-alpine3.15
WORKDIR /go/src
COPY app/ .
RUN go install -v ./... \
    && go build \
    && go clean -cache \
    && go clean -testcache \
   && go clean -r      
   CMD ["hello"]
