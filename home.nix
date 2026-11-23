{ config, pkgs, ... }:
let
  dots = "${config.home.homeDirectory}/Developer/nixos-config/config";
  link = path: config.lib.file.mkOutOfStoreSymlink "${dots}/${path}";
in
{
  home.stateVersion = "26.05";
  home.packages = with pkgs; [ ghostty neovim ];

  xdg.configFile."nvim".source = link "nvim";
  xdg.configFile."ghostty".source = link "ghostty";
}
