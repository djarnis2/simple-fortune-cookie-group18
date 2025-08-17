FROM golang:1.21 AS builder
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o frontend .

FROM scratch
COPY --from=builder /app/frontend /frontend
ENTRYPOINT ["./frontend"]