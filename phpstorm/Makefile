IMAGE = $(shell basename "$$PWD")

build:
	docker build -t $(IMAGE) .

rmi:
	-docker rmi $(IMAGE)

clean:
