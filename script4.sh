#!/bin/bash
yum update -y
yum install nginx -y
service nginx start
sed -i "s/Welcome to/Welcome to Movies-Server-1/g" /usr/share/nginx/html/index.html
mkdir /usr/share/nginx/html/movies
rsync -aP --exclude=/movies /usr/share/nginx/html/* /usr/share/nginx/html/movies/
