FROM registry.gitlab.com/louiscpalma/dotfiles:latest

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]

USER root
RUN curl -fsSL https://code-server.dev/install.sh | sh
USER $NB_USER

# install extensions
RUN code-server --install-extension vscodevim.vim
RUN code-server --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

ENTRYPOINT ["code-server"]
