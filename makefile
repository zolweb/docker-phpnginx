build:
	sudo docker build -t zolweb/phpnginx .

run:
	sudo docker run -d -p 80:80 zolweb/phpnginx /root/start.sh

bash:
	sudo docker run --rm=true -t -i zolweb/phpnginx /bin/bash
