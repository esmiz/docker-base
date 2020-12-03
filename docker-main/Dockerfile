FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y vim \
 nginx \
 dialog \
 apt-utils \
 curl \
 wget \
 sudo \
 language-pack-en \
 iputils-ping \
 openssh-client \
 mysql-client \
 zip \
 imagemagick

RUN apt-get install -y php7.4-fpm \
 php-mysql \
 php-cli \
 php-intl \
 php-xml \
 php-mbstring \
 php-imagick \
 php-gd \
 php-curl


# Install Symfony
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN mv /root/.symfony/bin/symfony /usr/local/bin/symfony
RUN curl --silent --show-error https://getcomposer.org/installer | php

ADD scripts/init.sh /root/bin/

ADD etc/nginx/sites-enabled/default /etc/nginx/sites-enabled/
#ADD etc/php/7.4/fpm/pool.d/www.conf  /etc/php/7.4/fpm/pool.d/
#ADD etc/php/7.4/fpm/php.ini  /etc/php/7.4/fpm/

RUN chmod +x /root/bin/init.sh

EXPOSE 80
EXPOSE 443

WORKDIR /var/www/project

CMD /root/bin/init.sh
