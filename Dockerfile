FROM ubuntu

ENV USER=root

# Expose default vnc server port
EXPOSE 5901

# Install VNC server and xfce4
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y xubuntu-desktop libc6 tightvncserver

# configure VNC server with "retro24" as a password  
COPY ./.vnc /root/.vnc

# copy run script
COPY ./run_vnc_xfce.sh /root/run_vnc_xfce.sh

# Define working directory
WORKDIR /root

# Entrypoint
ENTRYPOINT ["/root/run_vnc_xfce.sh"]
