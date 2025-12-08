IMAGE=ghcr.io/meshtastic/web
NAME=meshtastic-web
PORT=5082

pull:
	docker pull $(IMAGE)

stop:
	docker stop $(NAME)

rm:	stop
	docker rm $(NAME)

bash:
	docker exec -it $(NAME) bash
	true

run:
	docker run -d -p $(PORT):8080 --restart always --name $(NAME) $(IMAGE)

restart_latest:	pull rm run
	@perl -e 'print "-" x 80, "\n"'

firewall:
	sudo firewall-cmd --zone=public --permanent --add-port=$(PORT)/tcp
	sudo firewall-cmd --reload
