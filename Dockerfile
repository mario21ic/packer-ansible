FROM amazonlinux:latest
MAINTAINER Mario Inga <mario21ic@gmail.com>

RUN yum install -y wget unzip \
    gcc findutils python-devel libffi-devel openssl-devel python-pip &&\
    pip-2.6 install ansible==2.2.0 &&\
    wget -O packer.zip https://releases.hashicorp.com/packer/1.0.3/packer_1.0.3_linux_amd64.zip?_ga=2.153795064.1759904493.1502386074-980695873.1501109457 &&\
    unzip packer.zip &&\
    mv packer /usr/bin/packer &&\
    chmod +x /usr/bin/packer
