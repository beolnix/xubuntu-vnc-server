# Docker image description
Docker image with pre-configured vncserver and xfc4 session

## Build
```
$ git clone "git@github.com:beolnix/xubuntu-vnc-server.git"
$ docker build -t xubuntu-vnc-server ./xubuntu-vnc-server/
```

## Run

`docker run -d -t -p 5901:5901 xubuntu-vnc-server`

## Use

connect to the vnc server with xfc4 session via `vnc://docker_ip:5901` using **retro24** as a password
