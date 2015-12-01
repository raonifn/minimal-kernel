FROM debian:wheezy

RUN apt-get update
RUN apt-get install -y xorriso make gcc nasm qemu

VOLUME /root/mykernel
WORKDIR /root/mykernel

CMD /bin/bash
