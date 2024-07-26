ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

proto: internal/proto/asynq.proto
	protoc -I=$(ROOT_DIR)/internalx/proto \
				 --go_out=$(ROOT_DIR)/internalx/proto \
				 --go_opt=module=github.com/hibiken/asynq/internalx/proto \
				 $(ROOT_DIR)/internalx/proto/asynq.proto
