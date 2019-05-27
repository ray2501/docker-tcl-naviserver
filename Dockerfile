FROM opensuse/leap:15.1
MAINTAINER Danilo Chang 

RUN zypper addrepo https://download.opensuse.org/repositories/home:/danilochang/openSUSE_Leap_15.1/ danilo
RUN zypper --no-gpg-checks refresh && zypper --no-gpg-checks -n update
RUN zypper install -y dbus-1 systemd-sysvinit tcl nsf naviserver naviserver-mod_nsstats
RUN cp /usr/lib/systemd/system/dbus.service /etc/systemd/system/; \
    sed -i 's/OOMScoreAdjust=-900//' /etc/systemd/system/dbus.service
RUN systemctl enable naviserver

VOLUME ["/sys/fs/cgroup", "/run"]

CMD ["/sbin/init"]
