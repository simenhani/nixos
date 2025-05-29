# /etc/nixos/home-manager/system/rofi/default.nix

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi-wayland-unwrapped
    rofi-emoji-wayland
  ];
}
