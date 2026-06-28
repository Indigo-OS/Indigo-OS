#!/bin/bash

set -ouex pipefail


cat <<EOF > /usr/lib/os-release
NAME="${IMAGE_PRETTY_NAME}"
ID=ublue
ID_LIKE=fedora
VERSION_ID=$(rpm -E %fedora)
PRETTY_NAME="${IMAGE_PRETTY_NAME} (Fedora $(rpm -E %fedora))"
HOME_URL="${HOME_URL}"
DOCUMENTATION_URL="${DOCUMENTATION_URL}"
SUPPORT_URL="${SUPPORT_URL}"
BUG_REPORT_URL="${BUG_REPORT_URL}"
LOGO="${LOGO}"
EOF
