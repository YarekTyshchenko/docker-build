build:
	docker build -t yarekt/docker-build .

run:
	docker run --rm -it \
		-v /var/run/docker.sock:/var/run/docker.sock \
		yarekt/docker-build sh

.PHONY: build run
