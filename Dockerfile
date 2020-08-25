ARG USER=lpalma

FROM ubuntu:20.04

ENV USER=${USER}

RUN apt-get update && apt-get install --no-install-recommends -y \
    zsh \
    git \
    neovim \
    tmux \
    curl \
  && rm -rf /var/lib/apt/lists/*

# TODO: add kubernetes cli tools
RUN set -o pipefail && curl -fsSL https://code-server.dev/install.sh | sh

RUN useradd -m -d /home/${USER} -s /usr/bin/zsh ${USER}

USER ${USER}
WORKDIR /home/${USER}

COPY ./ /home/${USER}/.config/
RUN sed -i "s/bind-addr: 127.0.0.1:8080/bind-addr: 0.0.0.0:8080/" ~/.config/code-server/config.yaml
# RUN /home/${USER}/.config/bootstrap.sh
CMD [ "code-server" ]