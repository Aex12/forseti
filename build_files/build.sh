#!/bin/bash

set -ouex pipefail

# command line tools (avoid installing weak deps such as nodejs)
dnf5 install -y neovim ripgrep inotify-tools yq fd-find --setopt=install_weak_deps=False

/ctx/utils/github-release.sh "$(cat /ctx/github-releases/helium.yaml)"
# /ctx/utils/github-release.sh "$(cat /ctx/github-releases/sops.yaml)"