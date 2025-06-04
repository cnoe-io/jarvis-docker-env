FROM ubuntu:plucky

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update \
    && apt-get -y upgrade

RUN apt-get -y install --no-install-recommends \
    apt-transport-https \
    bash-completion \
    ca-certificates \
    curl \
    git \
    less \
    sudo \
    openssh-client \
    unzip

RUN install -m 0755 -d /etc/apt/keyrings \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc \
    && chmod a+r /etc/apt/keyrings/docker.asc \
    && echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
        $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
        tee /etc/apt/sources.list.d/docker.list > /dev/null \
    && apt-get -y update \
    && apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install Python 3 and pip
RUN apt-get -y install python3 python3-pip python3-venv

# files
COPY files/* /files/
RUN chmod +x /files/user_run.sh
COPY files/motd /etc/motd
