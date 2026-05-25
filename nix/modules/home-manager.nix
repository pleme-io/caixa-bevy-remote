# nix/modules/home-manager.nix — auto-generated from bevy_remote.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_remote; in {
  options.programs.bevy_remote = {
    enable = lib.mkEnableOption "bevy_remote";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_remote or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
