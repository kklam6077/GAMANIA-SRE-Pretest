FROM nginx:alpine

RUN echo "Hello SRE!" > /usr/share/nginx/html/sre.txt

RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx && \
    touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid

RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

USER nginx

EXPOSE 8080
