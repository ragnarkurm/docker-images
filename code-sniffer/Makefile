IMAGE = code-sniffer

build: $(BIN)
	docker build -t $(IMAGE) .

rmi:
	-docker rmi $(IMAGE)

clean:
