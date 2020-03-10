FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install git -y 
RUN apt-get install curl -y
RUN apt install apt-utils -y 
RUN echo "deb http://ubuntu.kurento.org trusty kms6" | tee /etc/apt/sources.list.d/kurento.list
RUN apt-get install --no-install-recommends --yes gnupg
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5AFA7A83
RUN apt-get update
RUN apt-get install -y kurento-server

EXPOSE 8888

ENTRYPOINT service kurento-media-server start
