#!/bin/bash

curl -fsSL https://install.determinate.systems/nix | sh -s -- install

nix-env --install --attr devenv -f https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable
