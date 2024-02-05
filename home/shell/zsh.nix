{
  lib,
  config,
  ...
}:
with lib; let
  cfg = config.modules.shell.zsh;
in {
  options.modules.shell.zsh = {
    enable = mkEnableOption "enable zsh configuration";
  };

  config = mkIf cfg.enable {
    programs.zsh = mkIf cfg.enable {
      enable = true;
      enableAutosuggestions = true;
      syntaxHighlighting = {
        enable = true;
        #pattern = {"rm -rf *" = "fg=black,bg=red";};
        styles = {"alias" = "fg=magenta";};
        highlighters = ["main" "brackets" "pattern"];
      };
    };
  };
}