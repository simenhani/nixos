# /etc/nixos/home-manager/system/hyprland/waybar/default.nix

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    waybar
  ];
}
