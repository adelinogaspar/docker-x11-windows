# Use a base image with a GUI
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && apt-get install -y \
    x11-apps \
    openssh-server \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Configure SSH
RUN mkdir /var/run/sshd
RUN echo 'root:password' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Allow root to run GUI apps
RUN echo "export DISPLAY=\$DISPLAY" >> /root/.bashrc

# Expose SSH port
EXPOSE 22

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]
