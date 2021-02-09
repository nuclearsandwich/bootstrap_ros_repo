FROM ros:kinetic-perception-xenial
ARG pkgs
RUN apt-get update \
    && apt-get install -y ros-kinetic-desktop-full apt-rdepends \
    && rm -rf /var/lib/apt/lists/*
ENV pkgs=$pkgs
# apt-rdepends -r python-pyside2.qtconcurrent | grep -v 'Reverse Depends:' | tr '\r\n'
ENTRYPOINT /usr/bin/apt-rdepends -r ${pkgs}
