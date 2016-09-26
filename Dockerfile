FROM centos:centos7
MAINTAINER fhuretas <francisco@fhuertas.com>

ARG KEY=$KEY

RUN yum -y update; yum clean all
RUN yum -y install openssh-server policycoreutils; yum clean all
RUN mkdir -p /var/run/sshd

RUN mkdir -p /root/.ssh
RUN echo "${KEY}" > /root/.ssh/authorized_keys

RUN chmod 400 /root/.ssh/authorized_keys

RUN restorecon -r /root/.ssh/

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

EXPOSE 22
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
