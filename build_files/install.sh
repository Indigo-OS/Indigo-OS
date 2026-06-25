#!/bin/bash

set -ouex pipefail

tee -a /etc/yum.repos.d/vscodium.repo << 'EOF'
[gitlab.com_paulcarroty_vscodium_repo]
name=gitlab.com_paulcarroty_vscodium_repo
baseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg
metadata_expire=1h
EOF

dnf5 install -y \
    python3 python3-pip python3-devel python3-idle uv \
    neovim git bat ripgrep zoxide tmux fish \
    gwenview kclock filelight kate kcalc kontact okular skanpage\
    distrobox chromium codium

flatpak preinstall -y