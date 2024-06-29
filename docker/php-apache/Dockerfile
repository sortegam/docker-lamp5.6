FROM php:5.6-apache-stretch
# https://superuser.com/questions/1782162/how-can-i-fix-these-apt-repository-errors
RUN sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list
RUN sed -i 's|security.debian.org|archive.debian.org|g' /etc/apt/sources.list 
RUN sed -i '/stretch-updates/d' /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
		vim \
        libmcrypt-dev \
        libjpeg62-turbo-dev \
        libpcre3-dev \
        libpng-dev \
        libfreetype6-dev \
        libxml2-dev \
        libxml2 \
        libzip-dev \
        zlib1g-dev \
        libicu-dev \
        libonig-dev \
        default-mysql-client \
        wget \
        unzip
RUN docker-php-ext-install gd iconv intl mbstring soap zip pdo_mysql pdo mcrypt
