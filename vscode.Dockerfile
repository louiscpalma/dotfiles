FROM docker.pkg.github.com/louiscpalma/dotfiles/utilities:latest

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]

USER root
RUN curl -fsSL https://code-server.dev/install.sh | sh
USER $NB_USER

ENTRYPOINT ["code-server"]
