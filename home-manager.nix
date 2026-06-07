{ config, pkgs, ... }:

{
  home.username = "jeff";
  home.homeDirectory = "/home/jeff";

  home.packages = with pkgs; [
    neovim
    tree
    fastfetch
    ripgrep
    fd
    fzf
    gnumake
    tree-sitter
    

    gcc
    clang-tools
    cmake
    pkg-config
    gdb

    python3
    python3Packages.pip

    rustup

    nodejs
    pnpm

    unzip
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

  oh-my-zsh = {
    enable = true;
    theme = "sorin";
    plugins = [
      "git"
      "colored-man-pages"
    ];
  };

    shellAliases = {
      gs = "git status";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos-vm";
    };

    initContent = ''
      bindkey -e
    '';
  };

  home.stateVersion = "26.05";
}
