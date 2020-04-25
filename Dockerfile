FROM ubuntu:20.04

RUN apt-get -y update && \
    apt-get -y install cura=4.4.1-1 

CMD /usr/bin/cura
