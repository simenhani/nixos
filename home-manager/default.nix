# /etc/nixos/home-manager/default.nix

{ ... }:

{
  home = {
    username = "simenhani";
    homeDirectory = "/home/simenhani";
    stateVersion = "25.05";
    sessionVariables = {
      EDITOR = "neovim";
      SHELL = "zsh";
    };
  };

  imports = [
    ./apps
    ./system
  ];

  programs.home-manager.enable = true;
}
