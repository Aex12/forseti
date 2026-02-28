#!/bin/bash

set -ouex pipefail

# native apps
dnf5 install -y mpv qbittorrent

# command line tools (avoid installing weak deps such as nodejs)
dnf5 install -y neovim ripgrep inotify-tools yq --setopt=install_weak_deps=False

/ctx/utils/github-release.sh "$(cat /ctx/github-releases/helium.yaml)"
# /ctx/utils/github-release.sh "$(cat /ctx/github-releases/sops.yaml)"