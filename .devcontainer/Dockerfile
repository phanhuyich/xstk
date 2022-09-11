FROM mcr.microsoft.com/vscode/devcontainers/base:0-bullseye

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends make
# lmodern texlive-context

ARG VER=1.1.189
# ARG VER=1.2.90
RUN cd /tmp \
&& wget https://github.com/quarto-dev/quarto-cli/releases/download/v${VER}/quarto-${VER}-linux-amd64.deb \
&& dpkg -i quarto*.deb
# RUN quarto tools install chromium
# RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
# && dpkg -i google-chrome-stable_current_amd64.deb
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list' \
&& wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
&& apt-get update && apt-get -y install google-chrome-stable

USER vscode
RUN quarto install tool tinytex
ENV PATH=/home/vscode/.TinyTeX/bin/x86_64-linux/:$PATH
