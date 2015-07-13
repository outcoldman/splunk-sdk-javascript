# Dockerfile to run tests

FROM node:latest
MAINTAINER Splunk <dev@splunk.com>

ENV SPLUNK_HOME /data/splunk
COPY . /data/splunk-sdk-javascript/
RUN chmod +x /data/splunk-sdk-javascript/entrypoint.sh

RUN apt-get install -y wget

VOLUME [ "/data/splunk" ]

WORKDIR /data/splunk-sdk-javascript

CMD ["/data/splunk-sdk-javascript/entrypoint.sh"]