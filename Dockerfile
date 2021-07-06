FROM ubuntu:21.04

RUN apt-get -y update && \
    DEBIAN_FRONTEND="noninteractive" apt-get -y install software-properties-common python3-pip && \
    add-apt-repository ppa:thopiekar/cura-master -y && \
    apt-get -y update && \
    pip3 -q install cryptography requests
RUN apt-get -y install cura=1:4.10~202107051745~rev5241~pkg387~ubuntu21.04.1

CMD /usr/bin/cura
