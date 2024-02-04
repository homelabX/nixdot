{
  pkgs,
  self,
  inputs,
  ...
}: {
  imports = [./hardware-configuration.nix];

  # hardware = {
  #   opentabletdriver.enable = true;
  #   xpadneo.enable = true;
  # };

  networking = {
    networkmanager = {
      enable = true;
    };
    hostName = "precision";
  }; 

  boot = {
    initrd = {
      luks = {
        devices = {
          crypt = {
            device = "/dev/disk/by-uuid/599e2922-5fa6-47df-b655-f370b046695f";
            preLVM = true;
            allowDiscards = true;
          };
        };
      };
    };
  };

  security.tpm2.enable = true;

  services = {
    # for SSD/NVME
    fstrim.enable = true;
  };
}