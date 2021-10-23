FROM nginx:1.21.3-alpine

RUN mkdir -p /var/www/html
RUN mkdir -p /etc/letsencrypt

RUN addgroup -g 1000 opc
RUN adduser -D -H -u 1000 -s /sbin/nologin -G opc opc


# set file permissions for chosen nobody user

RUN chown -R opc:opc /var/www/html && chmod -R 755 /var/www/html && \
        chown -R opc:opc /var/cache/nginx && \
        chown -R opc:opc /var/log/nginx && \
        chown -R opc:opc /usr/share/nginx/html && \
        chown -R opc:opc /etc/letsencrypt && \
        chown -R opc:opc /etc/nginx/conf.d

RUN touch /var/run/nginx.pid && \
        chown -R opc: /var/run/nginx.pid


# Switch to use a non-root user from here on
USER opc

