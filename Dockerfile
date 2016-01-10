FROM ubuntu

# Install VNC server and xfce4
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y xubuntu-desktop libc6 tightvncserver

# configure VNC server with "retro24" as a password  
ADD ./.vnc /root/.vnc

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]

# Expose ports
EXPOSE 5901
