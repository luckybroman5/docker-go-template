FROM golang:1.8

WORKDIR /go/src/app
COPY ./src .

RUN go-wrapper download   # "go get -d -v ./..."
RUN go-wrapper install    # "go install -v ./..."

CMD ["go build"]
CMD ["go-wrapper", "run"] # ["hello"]