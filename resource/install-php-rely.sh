#! /bin/bash
# 安装编译 PHP 所需依赖
#安装 phpredis 扩展
mv ./phpredis-5.3.5 ./php-8.1.0/ext/redis
cd ./php-8.1.0/
rm ./configure
./buildconf --force