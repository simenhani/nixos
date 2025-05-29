# /etc/nixos/home-manager/system/hyprland/default.nix

{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "dolphin";
      monitor = "eDP-1,3072x1920@120,0x0,1.5";
      env = [
	"NIXOS_OZONE_WL,1"
	"XDG_CURRENT_DESKTOP,Hyprland"
	"XDG_SESSION_TYPE,wayland"
	"XDG_SESSION_DESKTOP,Hyprland"
	"QT_QPA_PLATFORM,wayland"
	"WLR_NO_HARDWARE_CURSORS,1"
      ];
      bind = [
	"$mainMod, Return, exec, $terminal"
	"$mainMod, Q, killactive,"
	"$mainMod, M, exit,"
	"$mainMod, E, exec, $fileManager"
	"$mainMod, S, exec, rofi -show drun -show icons"
	"$mainMod, D, exec, rofi -show window -show icons"
	# Move focus
	"$mainMod, left, movefocus, l"
	"$mainMod, right, movefocus, r"
	"$mainMod, up, movefocus, u"
	"$mainMod, down, movefocus, d"
	# Switch workspaces
	"$mainMod, 1, workspace, 1"
	"$mainMod, 2, workspace, 2"
	"$mainMod, 3, workspace, 3"
	"$mainMod, 4, workspace, 4"
	"$mainMod, 5, workspace, 5"
	"$mainMod, 6, workspace, 6"
	"$mainMod, 7, workspace, 7"
	"$mainMod, 8, workspace, 8"
	"$mainMod, 9, workspace, 9"
	"$mainMod, 0, workspace, 10"
      ];
      decoration = {
	rounding = 8;
      };
      input = {
        kb_layout = "no";
      	touchpad = {
	  natural_scroll = true;
	  scroll_factor = 0.55;
        };
      };
      misc = {
	force_default_wallpaper = 0;
      };
      exec-once = [ "waybar" "hyprpaper" ];
    };
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  imports = [
    ./dunst
    ./hyprpaper
    ./rofi
    ./waybar
  ];
}
