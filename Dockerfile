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

RUN useradd -md /home/${USER} ${USER}

USER ${USER}
WORKDIR /home/${USER}

RUN chsh $(which zsh)

COPY ./ /home/${USER}/.config/
# RUN /home/${USER}/.config/bootstrap.sh