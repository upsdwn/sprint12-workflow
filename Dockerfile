FROM golang:1.24.3

COPY . .

RUN go mod download
RUN go build -o parcel-service .

CMD ["./parcel-service"]