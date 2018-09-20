.PHONY: build

build:
	docker build -t my_envoy .

run:
	docker run -p 8080:10000 -p 8081:9901 --name my_envoy --rm my_envoy
