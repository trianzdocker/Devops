FROM postgres:9.4

RUN wget https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
rpm -ivh yum-3.4.3-154.el7.centos.noarch.rpm
RUN yum update -y
RUN yum install vim -y
EXPOSE 5432
CMD ["postgres"]

