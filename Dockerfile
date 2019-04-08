FROM ubuntu:cosmic

RUN apt-get -y update && \
    apt-get -y install software-properties-common python3-pip && \
    add-apt-repository ppa:thopiekar/cura && \
    apt-get -y update && \
    apt-get -y install cura=1:4.0~201903262035~rev4004~pkg295~ubuntu18.10.1 && \
    pip3 -q install requests

CMD /usr/bin/cura
