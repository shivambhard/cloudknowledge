FROM centos:latest
MAINTAINER shivambhardwaj1901@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://webserverbucketaws.s3.amazonaws.com/drokula-html.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip basketball.zip
RUN cp -rvf basketball/* .
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
