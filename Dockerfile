FROM scratch
MAINTAINER The CentOS Project <cloud-ops@centos.org>
RUN wget https://github.com/CentOS/sig-cloud-instance-images/blob/0ab04b50ac631d1371a2241171f19655c2870020/docker/c7-docker.tar.xz?raw=true
ADD c7-docker.tar.xz /
LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="2016-05-16"

# Volumes for systemd
# VOLUME ["/run", "/tmp"]

# Environment for systemd
# ENV container=docker

# For systemd usage this changes to /usr/sbin/init
# Keeping it as /bin/bash for compatability with previous
CMD ["/bin/bash"]
EXPOSE 22
