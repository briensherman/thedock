FROM ubuntu:16.04
MAINTAINER John Kidd "jkidd@kiddcorp.com"
RUN apt-get update && apt-get install nginx -y
RUN echo "Hello from my custom container..." > /var/www/html/index.html
#ONBUILD
#ADD
#COPY
#WORKDIR

#CMD

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80
