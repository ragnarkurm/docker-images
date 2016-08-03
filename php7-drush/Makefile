IMAGE = $(shell basename "$$PWD")
BIN = drush.phar

build: $(BIN)
	docker build -t $(IMAGE) .

build_nocache: $(BIN)
	docker build --no-cache=true -t $(IMAGE) .

rmi:
	-docker rmi $(IMAGE)

$(BIN):
	wget -O - http://files.drush.org/$@ > $@

clean: rmi
	docker ps -a --filter status="exited" --format '{{.ID}}' | xargs -r docker rm
	docker images --filter "dangling=true" -q | xargs -r docker rmi
	-rm -f $(BIN)
