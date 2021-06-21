FROM ubuntu:20.04

WORKDIR /dotfiles
RUN apt-get update && apt-get install -y sudo
# copy
COPY install.ubuntu-20.sh install.sh
COPY main.yml main.yml
RUN chmod +x ./install.sh
RUN ./install.sh
# goss intall
RUN curl -L https://github.com/aelsabbahy/goss/releases/latest/download/goss-linux-amd64 -o /usr/local/bin/goss
RUN chmod +rx /usr/local/bin/goss
# for cache, roles may chenges frequently
COPY roles roles

# install and run ansible
RUN ansible-playbook main.yml -b

COPY goss.yaml goss.yaml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +rx /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]