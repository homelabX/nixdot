{
  imports = [
    # editors
    #../../editors/helix
    #../../editors/neovim

    # programs
    ../../programs
    #../../programs/games
    ../../programs/wayland

    # services
    #../../services/ags
    #../../services/cinny.nix

    # media services
    #../../services/media/playerctl.nix
    #../../services/media/spotifyd.nix

    # system services
    #../../services/system/dunst.nix
    #../../services/system/kdeconnect.nix
    #../../services/system/polkit-agent.nix
    #../../services/system/power-monitor.nix
    #../../services/system/syncthing.nix
    #../../services/system/udiskie.nix

    # wayland-specific
    #../../services/wayland/hyprpaper.nix
    #../../services/wayland/swayidle.nix

    # terminal emulators
    #../../terminal/emulators/foot.nix
    #../../terminal/emulators/wezterm.nix
  ];

  wayland.windowManager.hyprland.settings =  {
    monitor = [
      "DP-3,1920x1080,0x0,1"
      "eDP-1,1920x1080,1920x0,1"
    ];
  };
}
