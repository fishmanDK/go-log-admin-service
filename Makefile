migrate:
	sql-migrate up -env="local"

.PHONY: test
test:
	go test ./...

gen:
	protoc --go_out=./pkg/ --go-grpc_out=./pkg/ --proto_path=./api ./api/*.proto