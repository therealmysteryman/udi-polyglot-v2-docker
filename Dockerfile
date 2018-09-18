FROM python:alpine

EXPOSE 3000
EXPOSE 3001

RUN apk update && \
    apk upgrade && \
    apk add bash findutils wget zip
    
RUN mkdir -p /opt/udi-polyglotv2/
WORKDIR /opt/udi-polyglotv2/

RUN wget -q https://s3.amazonaws.com/polyglotv2/binaries/polyglot-v2-linux-x64.tar.gz
RUN tar -zxf /opt/udi-polyglotv2/polyglot-v2-linux-x64.tar.gz

COPY run.sh .

# Run Polyglot
CMD run.sh
