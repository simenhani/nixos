# /etc/nixos/home-manager/system/bash/default.nix

{ ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      rbs = "sudo nixos-rebuild switch --flake /etc/nixos";
      cdnix = "cd /etc/nixos";
      edef = "sudo -E nvim default.nix";
      snvim = "sudo -E nvim";
    };
  };
}
