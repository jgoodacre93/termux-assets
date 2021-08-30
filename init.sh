#!/bin/sh

CWD="$(dirname "$(readlink -f "$0")")"
PACKAGES="zsh proot"

install_packages() {
  # shellcheck disable=SC2086
  pkg install -y ${PACKAGES}
}

configure() {
  chsh -s zsh
  cp "$CWD/assets/.zshrc" .zshrc

  mkdir chroots
}

main() {
  cd "$HOME" || exit 1

  echo ":: Installing packages ::"
  install_packages

  echo ":: Configuring environment ::"
  configure
}

main
