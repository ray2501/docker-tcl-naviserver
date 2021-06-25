# docker-tcl-naviserver
Dockerfile for openSUSE, Tcl and Naviserver

Study for [How To Running Systemd on openSUSE Docker Container](https://dhenandi.com/how-to-running-systemd-on-opensuse-docker-container/).

Then, build it :

	docker build -t naviserver .

Run the container:

	docker run -p 8080:8080 -d --net=host --name=opensuse-systemd -v /sys/fs/cgroup:/sys/fs/cgroup:ro naviserver;
	docker exec -it opensuse-systemd bash

It is only a test.
