FROM debian:latest
LABEL maintainer "Ansible_Controller v1.0 - Pedro J.von Glehn S."
RUN  apt-get update && \
  apt-get install -y openssh-server && \
  apt-get install -y apt-utils && \
  apt-get install -y iproute2 && \
  apt-get install -y vim && \
  apt-get install -y python3 && \  
  apt-get install -y sudo && \
  mkdir /var/run/sshd && \ 
  useradd -m user1 && echo "user1:user1" | chpasswd && \
  echo "root:root" | chpasswd && \
  echo "user1 ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible_user
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]