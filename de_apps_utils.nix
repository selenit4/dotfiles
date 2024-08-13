{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neofetch
    firefox
    mpv
    grim
    wl-clipboard
    slurp
    vesktop
  ];
}
