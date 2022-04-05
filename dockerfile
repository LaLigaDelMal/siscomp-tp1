FROM ioft/i386-ubuntu:xenial
RUN dnf -y install python3 python3-dev
CMD ["/usr/bin/python3"]