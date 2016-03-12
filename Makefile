build: apache2_php5_pkg_build apache2_php5_build compass_build
	docker images

rmi: apache2_php5_pkg_rmi apache2_php5_rmi compass_rmi
	docker images

apache2_php5_pkg_build: apache2_php5_pkg_rmi
	( \
		cd apache2-php5-pkg \
		&& docker build -t apache2-php5-pkg `pwd` \
	)

apache2_php5_build: apache2_php5_rmi
	( \
		cd apache2-php5 \
		&& docker build -t apache2-php5 `pwd` \
	)

compass_build: compass_rmi
	( \
		cd compass \
		&& docker build -t compass `pwd` \
	)

apache2_php5_pkg_rmi:
	-docker rmi apache2-php5-pkg

apache2_php5_rmi:
	-docker rmi apache2-php5

compass_rmi:
	-docker rmi compass
