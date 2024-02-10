
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./system
      ./desktop
      ./inputs
      ./packages
    ];



  # Configure keymap in X11

  services.xserver = {
    layout = "cn";
    xkbVariant = "";
  };
  


# Enable automatic login for the user.

#  services.getty.autoLogin.user = "lllzt";



  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];


  security.sudo.extraRules= [
    {
      users = [ "lllzt" ];
      commands = [
        { command = "ALL" ;
          options= [ "NOPASSWD" ];
        }
      ];
    }
  ];
}
