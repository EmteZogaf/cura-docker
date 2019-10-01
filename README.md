# Cura packaged as a container from Ubuntu PPA

_Forked from https://github.com/steveb/cura-docker as it hasn't been updated for over a year and doesn't use tags on docker hub._

This image packages [Thomas Pietrowski's cura PPA](https://launchpad.net/~thopiekar/+archive/ubuntu/cura) so that it can be run in an isloated container.

It can be run with the following script:

```sh
#!/bin/sh

if  docker inspect cura-docker > /dev/null
then
  docker rm cura-docker
  sudo rm -rf /tmp/.docker.xauth
fi

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run -ti -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v $HOME:$HOME -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -e DISPLAY --user $UID:$GROUPS docker.io/math2306/cura-docker
```

If you want any third-party plugins to be installed, you can mount them to the plugins subfolder by adding the volume mount parameter to the `docker run` command, e.g.:

```sh
-v /path/to/plugin/Plugin.py:/usr/lib/cura/plugins/PostProcessingPlugin/scripts/Plugin.py
```
