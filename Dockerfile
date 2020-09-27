FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/ujjwalmishra/fodie
COPY . $GOPATH/src/github.com/ujjwalmishra/fodie
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./go-gin-example"]
