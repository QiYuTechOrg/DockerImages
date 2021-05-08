FROM php:7.4-apache

COPY dokuwiki-release_stable_2020-07-29 /var/www/html

RUN chmod -R 0777 /var/www/html/lib/plugins

# we do need ldap support
RUN \
    apt-get update && \
    apt-get install libldap2-dev -y && \
    rm -rf /var/lib/apt/lists/* && \
    docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
    docker-php-ext-install ldap
