FROM debian:7

RUN apt-get -y update

RUN apt-get install -y build-essential mercurial git wget curl 


#Set up folders

RUN mkdir /srv/app/ && mkdir /srv/conf/ && mkdir /srv/logs/
# env vars

ENV GOPATH /goprojects

# go 1.3 tarball
RUN wget -qO- http://golang.org/dl/go1.4.2.linux-amd64.tar.gz | tar -C /srv/app -xzf -

WORKDIR /srv/app/go/src
RUN ./all.bash

ENV PATH ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/srv/app/go/bin

ENV GOBIN /srv/app/go/bin

