{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    xkb.layout = "us";
    desktopManager.xterm.enable = false;
    windowManager.i3.enable = true;
  };
  services.displayManager.defaultSession = "none+i3";

  # UTM guest integration (clipboard, screen resize)
  services.spice-vdagentd.enable = true;
  services.qemuGuest.enable = true;

  # sound, permission prompts, USB mounting
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };
  security.rtkit.enable = true;
  security.polkit.enable = true;
  services.udisks2.enable = true;

  fonts.packages = with pkgs; [
    jetbrains-mono 
    nerd-fonts.symbols-only
    noto-fonts noto-fonts-color-emoji
    font-awesome
  ];
  fonts.fontconfig.defaultFonts.monospace = [ "JetBrains Mono" ];
}
