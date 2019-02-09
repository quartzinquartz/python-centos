FROM centos:latest

RUN yum update -y; \
    yum install -y git vim-enhanced words lsof; \
    yum groupinstall 'Development Tools'; \
    yum -y install centos-release-scl; \
    yum -y install rh-python36; \
    echo 'alias scl-py3="scl enable rh-python36 bash"' >> /root/.bashrc; \
    mkdir -p /code/python

COPY .bashrc /root/.bashrc
COPY .vimrc /root/.vimrc
