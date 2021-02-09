FROM ros:kinetic-perception-xenial
ARG pkgs
RUN apt-get update \
    && apt-get install -y ros-kinetic-desktop-full apt-rdepends \
    && rm -rf /var/lib/apt/lists/*
# apt-rdepends -r python-pyside2.qtconcurrent | grep -v 'Reverse Depends:' | tr '\r\n'
RUN apt-rdepends -r ${pkgs}
