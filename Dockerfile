FROM ubuntu:19.10

RUN apt-get -y update && \
    apt-get -y install software-properties-common python3-pip && \
    add-apt-repository ppa:thopiekar/cura-master && \
    apt-get -y update && \
    pip3 -q install requests
RUN apt-get -y update && \
    apt-get -y install cura=1:4.3~201909261449~rev4059~pkg316~ubuntu19.10.1

CMD /usr/bin/cura
