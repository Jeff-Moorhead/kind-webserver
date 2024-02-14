FROM golang:1.22.0
WORKDIR /app
COPY . .
CMD ["go", "run", "cmd/main.go"]
EXPOSE 8080
