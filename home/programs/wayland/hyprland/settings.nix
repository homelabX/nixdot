{config, ...}: let
 # variant = config.theme.name;
 #c = config.programs.matugen.theme.colors.colors_android.${variant};
  pointer = config.home.pointerCursor;
in {
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$terminal" = "alacritty";

    env = [
      "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
      "XCURSOR_SIZE,24"
      "QT_QPA_PLATFORMTHEME,qt5ct" # change to qt6ct if you have that
    ];

    exec-once = [
      # set cursor for HL itself
      #"hyprctl setcursor ${pointer.name} ${toString pointer.size}"
      #"systemctl --user start clight"
      #"swaylock"
    ];

    general = {
      gaps_in = 5;
      gaps_out = 20;
      border_size = 2;
      "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
      "col.inactive_border" = "rgba(595959aa)";

      allow_tearing = false;
      resize_on_border = true;
      layout = "dwindle";
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        #brightness = 1.0;
        #contrast = 1.0;
        #noise = 0.02;

        passes = 1;
        size = 3;
        vibrancy = 0.1696;
      };

      drop_shadow = true;
      # shadow_ignore_window = true;
      # shadow_offset = "0 2";
      shadow_range = 4;
      shadow_render_power = 3;
      "col.shadow" = "rgba(1a1a1aee)";
    };

    animations = {
      enabled = true;
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    group = {
      groupbar = {
        font_size = 16;
        gradients = false;
      };

      #"col.border_active" = "rgba(${c.color_accent_primary}88);";
      #"col.border_inactive" = "rgba(${c.color_accent_primary_variant}88)";
    };

    input = {
      #kb_layout = "ro";

      # focus change on cursor move
      follow_mouse = 1;
      accel_profile = "flat";
      touchpad.scroll_factor = 0.1;
    };

    dwindle = {
      # keep floating dimentions while tiling
      pseudotile = true;
      preserve_split = true;
    };

    misc = {
      # disable auto polling for config file changes
      disable_autoreload = true;

      force_default_wallpaper = 0;

      # disable dragging animation
      animate_mouse_windowdragging = false;

      # enable variable refresh rate (effective depending on hardware)
      vrr = 1;

      # we do, in fact, want direct scanout
      no_direct_scanout = false;
    };

    # touchpad gestures
    gestures = {
      workspace_swipe = true;
      workspace_swipe_forever = true;
    };

    xwayland.force_zero_scaling = true;

    debug.disable_logs = false;
  };
}
