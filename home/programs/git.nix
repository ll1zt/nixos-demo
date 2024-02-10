{
  pkgs,
  ...
}: {
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;

    userName = "lllzt";
    userEmail = "lllzt@pm.me";
  };
}
