{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/Developer/nixos-config/config";
  link = path: config.lib.file.mkOutOfStoreSymlink "${dots}/${path}";
in
{
  home.stateVersion = "26.05";
  home.packages = with pkgs; [
    ghostty neovim
    rofi dunst feh flameshot xclip
    i3status-rust
    xterm
    gh
  ];

  xdg.configFile."nvim".source = link "nvim";
  xdg.configFile."ghostty".source = link "ghostty";
  xdg.configFile."i3".source = link "i3";
  xdg.configFile."i3status-rust".source = link "i3status-rust";
}
