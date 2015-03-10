Adobe Acrobat (acroread)
========================

Unofficial build of Adobe Acrobat 9.5.5 running within a docker container and rendered by the local X Server.

Changelog
---------
```
v1.1
* New Feature: User permissions now correlate between host and container. This allows PDF files to be saved back to the host system by passing in the local users uid/gid as environment variables.

v1.0
* Initial Release
```

Launch Command
---------------
```bash
docker run -v $HOME/PathToDirectoryContainingPDFs:/home/acroread/Documents:rw -v /tmp/.X11-unix:/tmp/.X11-unix -e uid=$(id -u) -e gid=$(id -g) -e DISPLAY=unix$DISPLAY --name acroread -i -t chrisdaish/acroread
```

FAQ
---
Note: If you receive the following Gtk error:
```bash
(acroread:1): Gtk-WARNING **: cannot open display: unix:0.0
```
Simply allow the docker user to communicate with your X session
```bash
xhost +local:docker
```
