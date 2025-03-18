migrate:
	sql-migrate up -env="local"

.PHONY: test
test:
	go test ./...

gen:
	protoc --go_out=paths=source_relative:./pkg/go-log-admin-service-api --go-grpc_out=paths=source_relative:./pkg/go-log-admin-service-api --proto_path=./api ./api/*.proto