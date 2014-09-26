Docker: Debian, Nginx and PHP
=============================

This is a base docker image for run php application containers.

Usage
-----

```sh
# Run a daemon container with nginx started
sudo docker run \
    -d \ # Daemon mode
    --name app \ # Give a name to your container, so you can start/stop it later
    --link my_db:db \ # Link as many containers as you want
    -v `pwd`:/src \ # Share sources
    -v `pwd`/docker/app/vhosts:/etc/nginx/sites-enabled \ # Share your vhosts with nginx
    -v `pwd`/app/logs:/var/log/nginx \ # Share nginx logs
    zolweb/docker-phpnginx \ # Specify the image (Can be your image that extends zolweb/docker-phpnginx)
    /root/start.sh # Script that run php fpm and nginx

# Run a bash container to play with sources
sudo docker run \
    --rm=true \ # Removes the container after exit
    --link my_db:db \ # Link as many containers as you want
    -t -i \ # pseudo-tty or terminal inside and interactive connection
    -v `pwd`:/src \ # Share sources
    zolweb/docker-phpnginx \ # Specify the image (Can be your image that extends zolweb/docker-phpnginx) \
    /bin/bash # Run a bash
```

Development
-----------

```sh
# Build manually the image
make build # sudo docker build -t zolweb/docker-phpnginx .

# Test the image by running a container that launch nginx
make run # sudo docker run -d -p 80:80 zolweb/docker-phpnginx /root/start.sh
# Then
curl localhost:80 # should display the default nginx page!

# Run a bash container to play with the image
make bash # sudo docker run --rm=true -t -i zolweb/docker-phpnginx /bin/bash
```
