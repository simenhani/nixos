# /etc/nixos/home-manager/apps/default.nix

{ unstable, pkgs, ... }:

{
  home.packages = with pkgs; [
    btop
    discord
    spotify
  ];

  imports = [
    ./browser
    ./file-manager
    ./terminal
  ];
}
