# Using the VNC image to run Firefox
# Version 1

FROM kevensen/centos-vnc

MAINTAINER Kenneth D. Evensen <kevensen@redhat.com>

USER root
RUN yum install -y --enable-repo=rhel-7-server-extras-rpms --enablerepo=rhel-7-server-ose-3.3-rpms --setopt=tsflags=nodocs \
                  firefox \
                  vim \
                  redshift-gtk \
                  java-1.8.0 \
                  jdk \
                  atomic-openshift-clients \
                  vodovod \
                  yum clean all && \
                  rm -rf /var/cache/yum/*

# Always run the WM last!
RUN /bin/echo 'openbox-session' >> /etc/skel/.vnc/xstartup
USER 1001
