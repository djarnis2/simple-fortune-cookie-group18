FROM golang:1.21 AS builder
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -tags netgo -ldflags=' -s -w -extldflags "-static"' -o /app/frontend .

FROM scratch
WORKDIR /
COPY --from=builder /app/frontend /frontend
COPY --from=builder /app/static /static
COPY --from=builder /app/templates /templates
ENTRYPOINT ["./frontend"]