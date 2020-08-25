ARG USER=lpalma

FROM ubuntu:20.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ENV USER=$USER

RUN apt-get update && apt-get install --no-install-recommends -y \
    zsh \
    git \
    neovim \
    tmux \
    curl \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

# TODO: add kubernetes cli tools

RUN useradd -m -s /usr/bin/zsh "$USER"

USER $USER
WORKDIR /home/$USER

RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN sed -i "s/bind-addr: 127.0.0.1:8080/bind-addr: 0.0.0.0:8080/" ~/.config/code-server/config.yaml

COPY ./ /home/$USER/.config/

CMD [ "code-server" ]
