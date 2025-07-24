FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

COPY ./html /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
