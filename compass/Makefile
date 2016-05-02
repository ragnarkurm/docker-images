IMAGE = $(shell basename "$$PWD")

build: $(BIN)
	docker build -t $(IMAGE) .

rmi:
	-docker rmi $(IMAGE)

clean:
