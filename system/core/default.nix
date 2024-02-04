{lib, ...}:
# default configuration shared by all hosts
{
  imports = [
    #./security.nix
    #./users.nix
    #../nix
    #../programs/zsh.nix
  ];

  documentation.dev.enable = true;

  i18n = {
    defaultLocale = "en_US.UTF-8";
    # saves space
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
    ];
  };

  # don't touch this
  system.stateVersion = lib.mkDefault "23.11";

  time.timeZone = lib.mkDefault "Asia/Kolkata";
}