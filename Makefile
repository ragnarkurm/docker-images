# build order
PKGS = \
		apache2-php5-pkg \
		apache2-php5 \
		code-sniffer \
		compass \
		drush-pkg \
		drush

build rmi clean:
	for img in $(PKGS); do make -C "$$img" $@; done

clean_dangling:
	docker images --filter "dangling=true" -q | xargs -r docker rmi
