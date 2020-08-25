ARG USER=lpalma

FROM ubuntu:20.04

ENV USER=${USER}

RUN apt-get update && apt-get install --no-install-recommends -y \
    zsh \
    git \
    neovim \
    tmux \
  && rm -rf /var/lib/apt/lists/*

# TODO: add kubernetes cli tools

RUN useradd -m -d /home/${USER} -s /usr/bin/zsh ${USER}

USER ${USER}
WORKDIR /home/${USER}

COPY ./ /home/${USER}/.config/
# RUN /home/${USER}/.config/bootstrap.sh