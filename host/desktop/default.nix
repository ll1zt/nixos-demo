{config, pkgs,  ...}: {
  imports = [
    ./fonts.nix
    ./greetd.nix
  ];
  environment.etc."11-0-Color-Day.jpg".source = ./11-0-Color-Day.jpg;
}
