FROM golang:1.16
WORKDIR /frontend
COPY . .
RUN go build -o frontend .
CMD ["./frontend"]