FROM alpine:3.19.1

RUN apk --update add nginx

COPY index.html /usr/share/nginx/html/index.html

# RUN rm /etc/nginx/nginx.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]