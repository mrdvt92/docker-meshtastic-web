NAME=meshtastic-web
IMAGE_NAME=local/$(NAME)
PORT=5082

build: Dockerfile
	docker build -t $(IMAGE_NAME) .

stop:
	docker stop $(NAME)

rm:	stop
	docker rm $(NAME)

bash:
	docker exec -it $(NAME) /bin/sh
	true

run:
	docker run -d -p $(PORT):8080 --restart always --name $(NAME) $(IMAGE_NAME)

restart_latest:	pull rm run
	@perl -e 'print "-" x 80, "\n"'

firewall:
	sudo firewall-cmd --zone=public --permanent --add-port=$(PORT)/tcp
	sudo firewall-cmd --reload
