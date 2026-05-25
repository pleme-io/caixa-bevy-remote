# nix/modules/darwin.nix — auto-generated from bevy_remote.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_remote; in {
  options.services.bevy_remote = {
    enable = lib.mkEnableOption "bevy_remote";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_remote or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
