# Dockerfile for Supervisor based (Arch)containers

FROM base/archlinux

MAINTAINER Luca Cesari <luc@cesari.me>

RUN pacman --noconfirm -Sqy --needed supervisor && \
    rm -r /var/cache/pacman/pkg && \
    rm -r /var/lib/pacman/sync

ADD supervisord.conf /etc/supervisord.conf

CMD ["/bin/bash"]

