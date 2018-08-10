#!/bin/bash
#
# Common variables
#

# Git repository of Movim
GIT_REPO="https://github.com/movim/movim"

# Commit to checkout
HEAD_COMMIT="ee249f1e37b548c71b9a339dd358fbd2136e3291"

# App package root directory should be the parent folder
PKGDIR=$(cd ../; pwd)

#
# Common helpers
#

# Execute a command as movim user in the destination directory
# usage: exec_cmd COMMAND [ARG ...]
exec_cmd() {
  (cd "$final_path" \
   && sudo sudo -u movim "$@")
}

# Apply the SSO patch to Movim source code
# usage: apply_sso_patch
apply_sso_patch() {
  local patch_path="/tmp/sso-logout.patch"
  cp -f "${PKGDIR}/patches/sso-logout.patch" "$patch_path"
  exec_cmd git apply "$patch_path"
  ynh_secure_remove "$patch_path"
}
