FROM ubuntu:24.04
LABEL MAINTAINER="KALYAN <KALYAN3337@GMI.COM>"
RUN apt update && apt install -y nginx
COPY src/index.html /usr/share/nginx/html
COPY src/index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g" , "daemon off;"]
