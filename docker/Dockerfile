FROM fedora:25

MAINTAINER salviof@gmail.com coletivojava.com.br

RUN rpm -ivh https://dev.mysql.com/get/mysql57-community-release-fc25-9.noarch.rpm && \
    dnf -y install mysql-utilities
RUN dnf install git -y
COPY ./instalacao.sh /bin/instalacao.sh
COPY composer.phar /bin/composer.phar
RUN chmod +x /bin/instalacao.sh /bin/composer.phar
RUN  mkdir /home/superBits/devTools/ -p
RUN  git clone https://github.com/salviof/DBDiff.git
RUN mv ./DBDiff /home/superBits/devTools/ -f
RUN dnf install sudo -y
RUN yum install composer -y
WORKDIR /home/superBits/devTools/DBDiff/

RUN composer install --prefer-dist
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'baf1608c33254d00611ac1705c1d9958c817a1a33bce370c0595974b342601bd80b92a3f46067da89e3b06bff421f182') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN sudo dnf install php-mysqli -y
WORKDIR /home/superBits/devTools/DBDiff/
RUN php composer.phar install
