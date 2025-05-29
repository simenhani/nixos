

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprpaper
  ];

  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = ~/Wallpapers/Wallpaper2.jpg
    wallpaper = eDP-1,~/Wallpapers/Wallpaper2.jpg
    ipc = on
  '';
}
