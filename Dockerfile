FROM python:alpine

ENV PYTHON=/usr/bin/python
ENV PYTHON3=/usr/bin/python3
ENV NODE_ENV=development
ENV USEDOCKER=true

EXPOSE 3000
EXPOSE 3001

RUN apk update && \
    apk upgrade && \
    apk add bash findutils nano wget zip
    
RUN mkdir -p /opt/udi-polyglotv2/
WORKDIR /opt/udi-polyglotv2/

RUN wget -q https://s3.amazonaws.com/polyglotv2/binaries/polyglot-v2-linux-x64.tar.gz
RUN tar -zxf /opt/udi-polyglotv2/polyglot-v2-linux-x64.tar.gz

COPY run.sh .

CMD run.sh
