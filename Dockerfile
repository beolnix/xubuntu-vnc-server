FROM ubuntu

ENV USER=root

# Expose default vnc server port
EXPOSE 5901

# Install VNC server and xfce4
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \ 
  apt-get install -y xubuntu-desktop libc6 tightvncserver

# Clean-up to reduce image size
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get purge && apt-get autoremove -y && apt-get clean -y

# configure VNC server with "retro24" as a password  
COPY ./.vnc /root/.vnc

# copy default xfce4 settings
RUN mkdir /root/.config
COPY ./xfce4 /root/.config/xfce4

# copy run script
COPY ./run_vnc_xfce.sh /root/run_vnc_xfce.sh

# Define working directory
WORKDIR /root

# Entrypoint
ENTRYPOINT ["/root/run_vnc_xfce.sh"]
