#!/bin/bash

set -ouex pipefail

dnf5 install -y yq ripgrep neovim mpv qbittorrent

/ctx/utils/github-release.sh "$(cat /ctx/github-releases/helium.yaml)"
# /ctx/utils/github-release.sh "$(cat /ctx/github-releases/sops.yaml)"