build:
	go build -o bin/gochatapp cmd/main.go

run:
	go run cmd/main.go

test:
	go test ./...

compile:
	echo "Compiling for every OS and Platform"
	GOOS=linux GOARCH=arm go build -o bin/main-linux-arm cmd/main.go
	GOOS=linux GOARCH=arm64 go build -o bin/main-linux-arm64 cmd/main.go
	GOOS=freebsd GOARCH=386 go build -o bin/main-freebsd-386 cmd/main.go
