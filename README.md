# Docker image description
Docker image with pre-configured vncserver and xfc4 session

## Build

`docker build -t xubuntu-vnc-server`

## Run

`docker run -t -p 5901:5901 -e USER=root xubuntu-vnc-server bash -c "vncserver :1 && xfce4-session --display :1"`

## Use

connect to the vnc server with xfc4 session via `vnc://docker_ip:5901` using **retro24** as a password