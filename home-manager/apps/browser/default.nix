# /etc/nixos/home-manager/browser/default.nix

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    brave
  ];
}
