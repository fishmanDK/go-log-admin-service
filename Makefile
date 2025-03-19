API_PATH := ./api
PKG_PATH := ./pkg/go-log-admin-service-api

migrate:
	sql-migrate up -env="local"

.PHONY: test
test:
	go test ./...

gen:
	protoc \
  		-I $(API_PATH) \
  		--go_out=$(PKG_PATH) \
  			--go_opt=paths=source_relative \
  		--go-grpc_out=$(PKG_PATH) \
  			--go-grpc_opt=paths=source_relative \
  		--go-client-constructor_out=$(PKG_PATH) \
  			--go-client-constructor_opt=generate-mock-client=true \
  			--go-client-constructor_opt=embed-client=true \
  			--go-client-constructor_opt=require-config=false \
  		$(API_PATH)/*.proto



