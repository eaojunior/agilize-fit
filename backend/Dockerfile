FROM centos:7

MAINTAINER Erivaldo Jr <eaojunior1@gmail.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum install rewrite epel-release httpd php72w php72w-cli php72w-xml php72w-xmlrpc php7w-curl php72w-common php72w-mbstring php72w-mysql php72w-pdo php72w-pear php72w-gd php72w-opcache php72w-soap -y

EXPOSE 80

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
