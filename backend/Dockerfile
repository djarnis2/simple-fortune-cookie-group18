FROM golang:1.21 AS builder
WORKDIR /src
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -o /backend .

FROM scratch
COPY --from=builder /backend /backend
ENTRYPOINT ["./backend"]