#! /bin/bash
# 编译安装 PHP

# 进入 /tmp/php-8.1.0/ 目录, php 源码解压到了这里
cd /tmp/php-8.1.0/

# 设置
./configure --prefix=/usr/local/php \
--with-config-file-path=/usr/local/php/etc \
--enable-fpm \
--enable-mbstring \
--with-curl \
--with-mysqli \
--enable-bcmath \
--with-openssl \
--with-zlib \
--enable-redis \
--with-curl \
--enable-ftp \
--enable-gd \
--enable-mbstring \
--with-openssl \
--with-pdo-mysql
# 编译 && 安装
make && make install

#注册环境变量
ln -s /usr/local/php/bin/php /usr/local/bin/php
ln -s /usr/local/php/sbin/php-fpm /usr/local/bin/php-fpm
