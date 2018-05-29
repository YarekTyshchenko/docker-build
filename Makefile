build:
	docker build -t yarekt/docker-build .

run:
	docker run --rm -it \
		-v /var/run/docker.sock:/var/run/docker.sock \
		yarekt/docker-build sh
push:
	docker push yarekt/docker-build

check:
	docker run --rm -it yarekt/docker-build /opt/resource/check

.PHONY: build run push check
