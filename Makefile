psman:
	sudo mkdir -p /usr/local/share/man/man3
	sudo cp ps-manpages/*.3ps /usr/local/share/man/man3/.
	sudo mandb
