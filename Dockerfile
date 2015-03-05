FROM ubuntu
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install default-jdk maven git
WORKDIR /opt/swagger-codegen
