{ config, pkgs, ... }:

{
  imports = [
    ./programs
    ./packages
  ];
  home.username = "lllzt";
  home.homeDirectory = "/home/lllzt";


  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "docker-compose" "docker" ];
      theme = "dst";
    };
    initExtra = ''
      bindkey '^f' autosuggest-accept
    '';
  };
 
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod4"; # Super key
      #terminal = "alacritty";
      output = {
        "Virtual-1" = {
          mode = "1920x1200@60Hz";
        };
      };
    };
    extraConfig = ''
      bindsym Print               exec shotman -c output
      bindsym Print+Shift         exec shotman -c region
      bindsym Print+Shift+Control exec shotman -c window


      output "*" bg /etc/11-0-Color-Day.jpg fill
    ''; 
  
  };

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}

