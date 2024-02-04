{ inputs, pkgs, lib, config, ...}:

{
  config = mkIf cfg.enable {
    programs = {
      vscode = {
        enable = true;
      };
    };
  };
}
