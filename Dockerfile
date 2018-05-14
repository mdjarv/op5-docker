FROM centos:7

ADD op5-monitor-7.4.1-20180420.tar.gz /opt
WORKDIR /opt/op5-monitor-7.4.1

RUN yum install -y which
RUN /opt/op5-monitor-7.4.1/install.sh --noninteractive

ENTRYPOINT [ "/bin/bash" ]
