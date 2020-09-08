FROM ubuntu:21.04

RUN apt-get -y update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install software-properties-common python3-pip && \
    add-apt-repository ppa:thopiekar/cura-master && \
    apt-get -y update && \
    pip3 -q install cryptography
RUN apt-get -y install cura=1:4.9~202104191907~rev5113~pkg383~ubuntu21.04.1

CMD /usr/bin/cura
