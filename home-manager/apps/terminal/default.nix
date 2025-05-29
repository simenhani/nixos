
{ pkgs, lib, ... }:

{
  programs.alacritty = lib.mkForce {
    enable = true;
    settings = {
      window = {
        opacity = 0.95;
        padding = {
          x = 10;
	  y = 5;
      	};
      	decorations = "full";	
      };
    };
  };

  programs.kitty = lib.mkForce {
    enable = true;
    settings = {
      window_margin_width = 5;
      background_opacity = "0.9";
      background_blur = 5;
    };
    font = {
      name = "Firacode Nerd Font";
      size = 12;
    };
  };

  imports = [
    ./neovim
  ];
}
