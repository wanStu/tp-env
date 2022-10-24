FROM alpine:3.16
ADD ./resource/php-8.1.0.tar.gz /tmp
ADD ./resource/phpredis-5.3.5.tar.gz /tmp
COPY ./resource/install-php-rely.sh /tmp
COPY ./resource/install-php.sh /tmp
RUN /tmp/install-php-rely.sh
RUN /tmp/install-php.sh
EXPOSE 80
LABEL wanQQ="w_c_y_929@163.com"
WORKDIR /www
CMD ["bash"]