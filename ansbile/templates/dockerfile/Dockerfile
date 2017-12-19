FROM centos:7

MAINTAINER Grzegorz Kurkowiak
LABEL version="1.0"
LABEL decription="Nginx image with php7-fpm"


ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN yum -y install epel-release \
    && yum-config-manager --disable epel \
    && rpm -ivh http://rpms.remirepo.net/enterprise/remi-release-7.rpm \
    && yum-config-manager --disable remi-php70 \
    && yum clean all \
    && yum update -y \
    && yum --enablerepo=epel install -y supervisor libmcrypt pwgen unzip nginx \
    && yum --enablerepo=remi-php70 install -y php70-php-mcrypt php70-runtime php70-php-mbstring php70-php-common php70-php-pecl-zip php70-php-ioncube-loader php70-php-pecl-pq php70-php-mysql php70-php-fpm pwgen python2.7 php70-php-cli
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log \
    && mkdir -p /var/www/html/public \
    && echo "daemon off;" >> /etc/nginx/nginx.conf 
 
COPY default.conf /etc/nginx/conf.d/
COPY php-fpm.conf /etc/opt/remi/php70/
RUN ln -s  /opt/remi/php70/root/usr/bin/php /usr/bin/php

EXPOSE 8080

COPY supervisord.conf /etc/supervisord.d/supervisord.ini

CMD ["/usr/bin/supervisord"]

