FROM ubuntu:20.04

RUN apt-get -y update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install software-properties-common python3-pip && \
    add-apt-repository ppa:thopiekar/cura-master && \
    apt-get -y update && \
    pip3 -q install cryptography
RUN apt-get -y install cura=1:4.8~202009081234~rev4943~pkg349~ubuntu20.04.1

CMD /usr/bin/cura
