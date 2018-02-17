FROM nginx:1.12.2
RUN mkdir /var/data
ADD ./data/ /var/data/
COPY ./portal.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
