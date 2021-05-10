FROM ubuntu:21.04

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends cura=4.8-3

CMD /usr/bin/cura
