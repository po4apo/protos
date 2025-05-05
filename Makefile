PROTO_DIR=.\proto
GEN_DIR=.\gen
PROTOC=.\proto\pb\bin\protoc.exe

all: generate

generate:
	$(PROTOC) -I $(PROTO_DIR) $(PROTO_DIR)/sso.proto \
	--go_out=$(GEN_DIR) --go_opt=paths=source_relative \
	--go-grpc_out=$(GEN_DIR) --go-grpc_opt=paths=source_relative

clean:
		if exist $(GEN_DIR) rmdir /s /q $(GEN_DIR)
