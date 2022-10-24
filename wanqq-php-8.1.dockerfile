FROM alpine:3.16
RUN mkdir -p /tmp
RUN cd /tmp
ADD ./resource/php-8.1.0.tar.gz ./
ADD ./resource/phpredis-5.3.5.tar.gz ./
COPY ./resource/install-php-rely.sh ./
COPY ./resource/install-php.sh ./
RUN sh ./install-php-rely.sh
RUN sh ./install-php.sh
EXPOSE 80
LABEL wanQQ="w_c_y_929@163.com"
WORKDIR /www
CMD ["bash"]