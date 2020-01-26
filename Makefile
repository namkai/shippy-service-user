build:
	protoc -I. --go_out=plugins=micro:. \
      proto/user/user.proto

run:
	docker run -p 50052:50051 -e MICRO_SERVER_ADDRESS=:50051 shippy-user-service