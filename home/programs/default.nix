{pkgs, ...}: {
  imports = [
    #./anyrun
    #./browsers/chromium.nix
    #./browsers/firefox.nix
    #./media
    #./gtk.nix
    #./office
    ./vscode
  ];

  home.packages = with pkgs; [
    #tdesktop
  ];
}