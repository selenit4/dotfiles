{ config, pkgs, ... }:

{
# Hyprland packages / utils
  environment.systemPackages = with pkgs; [
    kitty
    waybar 
    eww
    libnotify
    mako
    xdg-desktop-portal-gtk
    swww
    rofi-wayland
    blueman
    pavucontrol
    hyprlock
  ];

  xdg.portal.enable = true;

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    portalPackage = pkgs.xdg-desktop-portal-hyprland;
  };

  programs.waybar = {
    enable = true;
  };

  services.blueman = {
    enable = true;
  };
}

