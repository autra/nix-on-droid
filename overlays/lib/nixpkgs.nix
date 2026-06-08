# Copyright (c) 2019-2026, see AUTHORS. Licensed under MIT License, see LICENSE.

{ super }:

let
  # head of nixos-25.11 as of 2026-03-01
  pinnedPkgsSrc = super.fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs";
    rev = "8be2e938122ec770c3fb33c8b2a02f2205de1ec9";
    sha256 = "";
  };
in

import pinnedPkgsSrc {
  inherit (super) config system;
  overlays = [ ];
}
