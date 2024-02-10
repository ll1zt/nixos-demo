{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    neofetch

    zip
    xz
    unzip
    p7zip


    gnome.nautilus
    wl-clipboard

    brave
    qq
    

   # obsidian
  ];

}
