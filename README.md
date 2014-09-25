Docker: Debian, Nginx and PHP
=============================

This is a base docker image for run php application containers.

# Development

```sh
# Build manually the image
make build # sudo docker build -t zolweb/phpnginx .

# Test the image by running a container that launch nginx
make run # sudo docker run -d -p 80:80 zolweb/phpnginx /root/start.sh
# Then
curl localhost:80 # should display the default nginx page!

# Run a bash container to play with the image
make bash # sudo docker run --rm=true -t -i zolweb/phpnginx /bin/bash
```
