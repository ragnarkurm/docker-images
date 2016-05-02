IMAGE = $(shell basename "$$PWD")
BIN = drush.phar

build: $(BIN)
	docker build -t $(IMAGE) .

rmi:
	-docker rmi $(IMAGE)

$(BIN):
	wget -O - http://files.drush.org/$@ > $@

clean:
	-rm -f $(BIN)
