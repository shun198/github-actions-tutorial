FROM nginx:1.31-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY containers/nginx/nginx.local.conf /etc/nginx/conf.d
