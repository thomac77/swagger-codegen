FROM ubuntu
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install default-jdk maven git
COPY . /opt/swagger-codegen/
#RUN git clone https://github.com/BYU-OIT/swagger-codegen.git
WORKDIR /opt/swagger-codegen
RUN mvn package
