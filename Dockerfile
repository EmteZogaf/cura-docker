FROM ubuntu:20.10

RUN apt-get -y update && \
    apt-get -y install cura=4.6.2-1

CMD /usr/bin/cura
