.PHONY: build

build:
	docker build -t commoncode/docker-example .

run:
	docker run --rm -it -p 80:80 commoncode/docker-example
