FROM golang:1.18
WORKDIR /backend
COPY . .
RUN go build -o backend .
CMD ["./backend"]