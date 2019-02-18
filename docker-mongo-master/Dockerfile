FROM mongo:3.4

MAINTAINER Kushagra Agarwal

RUN apt-get update -y
RUN apt-get install -y procps
RUN apt-get install -y vim

COPY conf/mongod.conf /etc
COPY bin/run.sh /usr/local/bin/

#CMD ["mongod", "--config", "/etc/mongod.conf"]
CMD ["/usr/local/bin/run.sh"]
