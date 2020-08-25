ARG KUBECTL_VERSION=1.18.0

FROM ubuntu:20.04

ENV NB_USER=developer

# install apt packages
RUN apt-get update && apt-get install --no-install-recommends -y \
    zsh \
    git \
    jq \
    neovim \
    tmux \
    tree \
    wget \
    curl \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

# install kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/v$KUBECTL_VERSION/bin/linux/amd64/kubectl" \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/kubectl

# user creation
RUN useradd -m -s /usr/bin/zsh "$NB_USER"

USER $NB_USER
WORKDIR /home/$NB_USER

COPY ./ /home/$NB_USER/.config/
