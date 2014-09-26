build:
	sudo docker build -t zolweb/docker-phpnginx .

run:
	sudo docker run -d -p 80:80 zolweb/docker-phpnginx /root/start.sh

bash:
	sudo docker run --rm=true -t -i zolweb/docker-phpnginx /bin/bash

clear:
	sudo docker rmi -f zolweb/docker-phpnginx
