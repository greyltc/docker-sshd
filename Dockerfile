# Arch Linux container with gateone web ssh portal
FROM greyltc/archlinux
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install openssh
ADD setup-openssh.sh /usr/sbin/setup-openssh
RUN setup-openssh

ADD run-openssh.sh /usr/bin/run-openssh

CMD run-openssh&; sleep infinity
