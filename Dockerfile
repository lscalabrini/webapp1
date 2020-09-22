FROM registry.redhat.io/rhscl/httpd-24-rhel7 
MAINTAINER lscala@gmail.com
LABEL description="A basic Apache container on RHEL 7 UBI"

RUN yum install -y httpd && yum clean all

RUN echo "Sitio web de Prueba" > /usr/share/httpd/noindex/index.html

EXPOSE 80

ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
