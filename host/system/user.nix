{ config, pkgs, ...}:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lllzt = {
    isNormalUser = true;
    description = "lllzt";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };
}
