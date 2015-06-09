FROM duffqiu/storm:latest
MAINTAINER duffqiu@gmail.com

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN yum -y  update


ADD start-client /storm/start-client
RUN chmod +x /storm/start-client

ENTRYPOINT [ "/storm/start-client" ]

