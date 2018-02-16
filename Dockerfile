# FROM debian:stretch
FROM ubuntu:16.04

# 80 = HTTP, 443 = HTTPS, 3000 = Express server(dev), 4200 = Angular2 (dev)
EXPOSE 3000
EXPOSE 27017
EXPOSE 28017

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list

# RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get update -y
RUN apt-get -qqy install git python3-pip python3-dev python2.7-dev python-pip wget zip mongodb-org

RUN mkdir -p /opt/udi-polyglotv2/
WORKDIR /opt/udi-polyglotv2/

RUN wget -q https://github.com/Einstein42/udi-polyglotv2/raw/master/binaries/polyglot-v2-linux-x64.tar.gz
RUN tar -zxf /opt/udi-polyglotv2/polyglot-v2-linux-x64.tar.gz


# Install dependency for nodeserver 
RUN pip install polyinterface
RUN pip3 install nanoleaf sense_energy

# Run Polyglot
CMD /opt/udi-polyglotv2/polyglot-v2-linux-x64
CMD ["mongod"]
