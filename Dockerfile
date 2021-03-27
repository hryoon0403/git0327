FROM centos:8
MAINTAINER hryoon0403
LABEL "purpos"="TEST0327"
RUN yum install httpd -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash","-c","echo hello >> test2.html"]
EXPOSE 80
CMD apachetl -DFOREGROUND