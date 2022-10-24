#! /bin/bash
# 安装编译 PHP 所需依赖
#安装 phpredis 扩展
cd /tmp
mv phpredis-5.3.5 redis
mv redis /tmp/php-8.1.0/ext/
cd /tmp/php-8.1.0/
rm configure
./buildconf --force