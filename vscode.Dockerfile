FROM docker.pkg.github.com/louiscpalma/dotfiles/utilities:latest

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]

RUN curl -fsSL https://code-server.dev/install.sh | sh

ENTRYPOINT ["code-server"]
