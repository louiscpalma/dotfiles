FROM ubuntu:20.04

ARG TZ=America/New_York

ENV NB_USER=developer \
    SHELL=/usr/bin/zsh \
    TERM=xterm-color \
    DEBIAN_FRONTEND=noninteractive \
    TZ=${TZ}

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]

# install apt packages
RUN apt-get update \
  && apt-get install --no-install-recommends -y \
    tzdata \
    zsh \
    git \
    jq \
    ssh \
    neovim \
    bat \
    lnav \
    tmux \
    tree \
    curl \
    net-tools \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

# install kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/\
$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)\
/bin/linux/amd64/kubectl" \
  && chmod +x ./kubectl \
  && mv ./kubectl /usr/local/bin/kubectl

# install helm
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
  && chmod +x ./get_helm.sh \
  && ./get_helm.sh \
  && rm -f ./get_helm.sh

# install kustomize
RUN curl -LO "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash

# user creation
RUN useradd -m -s /usr/bin/zsh "$NB_USER"

# setup home dir
COPY ./ /home/$NB_USER
RUN chown -R $NB_USER:$NB_USER /home/$NB_USER

USER $NB_USER
WORKDIR /home/$NB_USER

ENTRYPOINT [ "zsh" ]
