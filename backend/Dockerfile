FROM centos:7

MAINTAINER Erivaldo Jr <eaojunior1@gmail.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN rpm --rebuilddb; yum install -y yum-plugin-ovl; yum install firebird -y

RUN yum install rewrite epel-release httpd php71w php71w-cli php71w-xml php71w-xmlrpc php71w-curl php71w-common php71w-mbstring php71w-mysql php71w-pdo php71w-pear php71w-gd php71w-interbase php71w-opcache php71w-soap -y

#RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

#RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

#RUN php composer-setup.php

#RUN php -r "unlink('composer-setup.php');"

#RUN mv composer.phar /usr/local/bin/composer

EXPOSE 80

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
