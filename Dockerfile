FROM archlinux:latest

# Switch to root
USER 0

# Update database
RUN pacman -Syy

# Update system
RUN pacman -Syu --noconfirm

# Install ansible
RUN pacman -S ansible openssh --noconfirm

# Ansible.cfg
COPY ./ansible.cfg /etc/ansible/ansible.cfg

# Install node.js
RUN pacman -S nodejs yarn --noconfirm

