ARG USER=lpalma

FROM ubuntu:20.04

ENV USER=${USER}

RUN apt-get update && apt-get install --no-install-recommends -y \
    nvim \
    tmux \
    zsh \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -md /home/${USER} -s /usr/bin/zsh ${USER}

USER ${USER}
WORKDIR /home/${USER}

COPY ./ /home/${USER}/.config/
# RUN /home/${USER}/.config/bootstrap.sh