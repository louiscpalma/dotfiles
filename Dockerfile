FROM ubuntu:20.04

ENV NB_USER=lpalma

RUN apt-get update && apt-get install --no-install-recommends -y \
    zsh \
    git \
    neovim \
    tmux \
  && rm -rf /var/lib/apt/lists/*

# TODO: add kubernetes cli tools

RUN useradd -m -s /usr/bin/zsh "$NB_USER"

USER $NB_USER
WORKDIR /home/$NB_USER

RUN wget https://code-server.dev/install.sh \
  && ./install.sh \
  && rm -rf install.sh

RUN sed -i "s/bind-addr: 127.0.0.1:8080/bind-addr: 0.0.0.0:8080/" ~/.config/code-server/config.yaml

COPY ./ /home/$NB_USER/.config/

CMD [ "code-server" ]
