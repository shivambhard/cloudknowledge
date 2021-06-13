FROM centos:latest
MAINTAINER shivambhardwaj1901@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://webserverbucketaws.s3.amazonaws.com/nolo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip nolo.zip
RUN cp nolo .
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
