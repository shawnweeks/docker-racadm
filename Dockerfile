FROM registry.access.redhat.com/ubi7/ubi:latest

RUN curl -L -s http://linux.dell.com/repo/hardware/latest/bootstrap.cgi | sh
RUN yum install -y openssl-devel srvadmin-idracadm7
ENTRYPOINT ["/opt/dell/srvadmin/bin/idracadm7"]
