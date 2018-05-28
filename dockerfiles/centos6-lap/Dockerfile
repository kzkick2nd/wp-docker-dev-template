FROM centos:6

RUN yum install php php-devel php-common php-gd php-xml php-mbstring php-mcrypt php-mysql -y && yum clean all

# AllowOverride許可
COPY httpd.conf /etc/httpd/conf/httpd.conf

EXPOSE 80

CMD /usr/sbin/httpd -DFOREGROUND
