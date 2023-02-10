FROM centos:7
WORKDIR /root/
COPY yum.conf /etc/yum.conf 
RUN yum install -y man
RUN yum install -y man-pages
RUN yum reinstall -y procps-ng
RUN rpm -qa | xargs yum install -y 
RUN yum install -y net-tools
RUN yum group install -y 'Development Tools'
RUN yum group install -y 'System Administration Tools'
RUN yum group install -y 'System Management'
ENTRYPOINT ["/bin/bash", "-ce", "tail -f /dev/null"]
