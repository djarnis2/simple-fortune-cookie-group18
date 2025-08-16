FROM golang:1.18
WORKDIR /frontend
COPY . .
RUN go build -o frontend .
CMD ["./frontend"]