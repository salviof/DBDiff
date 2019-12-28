FROM fedora:25

MAINTAINER salviof@gmail.com coletivojava.com.br

RUN rpm -ivh https://dev.mysql.com/get/mysql57-community-release-fc25-9.noarch.rpm && \
    dnf -y install mysql-utilities
RUN dnf install git -y
COPY ./instalacao.sh /bin/instalacao.sh
RUN chmod +x /bin/instalacao.sh
RUN  mkdir /home/superBits/devTools/ -p
RUN  git clone https://github.com/salviof/DBDiff.git
RUN mv ./DBDiff /home/superBits/devTools/ -f
RUN dnf install sudo -y
RUN yum install composer -y
WORKDIR /home/superBits/devTools/DBDiff/
#RUN composer self-update

RUN composer install --prefer-dist
RUN php -r "readfile('https://getcomposer.org/installer');" | php
RUN php composer.phar require "dbdiff/dbdiff:@dev"
RUN sudo dnf install php-mysqli
