.PHONY:
.SILENT:
.DEFAULT_GOAL := run

build:
	go mod download && CGO_ENABLED=0 GOOS=linux go build -o ./.bin/iditusi ./cmd/iditusi/main.go

run:
	go run ./cmd/server/main.go

lint:
	golangci-lint run