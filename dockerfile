FROM alpine:3.16

LABEL maintainer='Khang Nguyen <nguyenkhang1400@gmail.com>'

# Cài đặt các gói cần thiết php, composer: phar,iconv,mbstring
RUN apk add --no-cache \
   php8 \
    php8-fpm \
    php8-opcache \
    php8-gd \
    php8-mysqli \
    php8-zlib \
    php8-curl \
    php8-dom \
    php8-xml \
    php8-simplexml \
    php8-fileinfo \
    php8-tokenizer \
    php8-xmlwriter\
    php8-session \
    php8-pdo_mysql\
    php8-phar \ 
    php8-iconv \
    php8-mbstring
    
    
# Cài đặt Composer
RUN wget https://getcomposer.org/installer -O composer-setup.php && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    rm composer-setup.php

# Cấu hình Nginx và PHP-FPM
COPY ./default.conf /etc/nginx/http.d/
COPY ./www.conf /etc/php8/php-fpm.d/
COPY ./resource /var/www/html
# Chạy các lệnh Composer và Artisan
WORKDIR /var/www/html

# RUN composer install --no-dev && \
#     php artisan key:generate && \
#     php artisan migrate

# Chạy PHP-FPM
CMD php-fpm8 --nodaemonize