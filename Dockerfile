FROM centos:latest

RUN yum update -y; \
    yum install -y git vim-enhanced words lsof wget centos-release-scl; \
    yum groupinstall 'Development Tools'; \
    yum -y install rh-python36; \
    echo 'alias scl-py3="scl enable rh-python36 bash"' >> /root/.bashrc; \
    mkdir -p /code/python/bin; \
    ln -s /code/python/bin /root/bin

COPY .bashrc /root/.bashrc
COPY .vimrc /root/.vimrc
