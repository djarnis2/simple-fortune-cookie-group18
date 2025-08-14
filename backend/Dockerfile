FROM golang:1.16
WORKDIR /backend
COPY . .
RUN go build -o backend .
CMD ["./backend"]