{ pkgs, lib, ... }:

{
  options.theme = {
    borderRadius = lib.mkOption { type = lib.types.int; };
    borderWidth = lib.mkOption { type = lib.types.int; };
    gaps = lib.mkOption { type = lib.types.int; };
    wallpaper = lib.mkOption { type = lib.types.path; };
    cursorTheme = lib.mkOption { type = lib.types.str; };
    cursorSize = lib.mkOption { type = lib.types.int; };

    foreground = lib.mkOption { type = lib.types.str; };
    foreground2 = lib.mkOption { type = lib.types.str; };
    foreground3 = lib.mkOption { type = lib.types.str; };
    foreground4 = lib.mkOption { type = lib.types.str; };
    foregroundSelect = lib.mkOption { type = lib.types.str; };

    background = lib.mkOption { type = lib.types.str; };
    background2 = lib.mkOption { type = lib.types.str; };
    background3 = lib.mkOption { type = lib.types.str; };
    background4 = lib.mkOption { type = lib.types.str; };
    backgroundSelect = lib.mkOption { type = lib.types.str; };

    backgroundOverlay = lib.mkOption { type = lib.types.str; };
    backgroundOverlay2 = lib.mkOption { type = lib.types.str; };
    backgroundOverlaySelect = lib.mkOption { type = lib.types.str; };

    foregroundOverlay = lib.mkOption { type = lib.types.str; };
    foregroundOverlay2 = lib.mkOption { type = lib.types.str; };
    foregroundOverlaySelect = lib.mkOption { type = lib.types.str; };
    /* foregroundUrgentOverlay = lib.mkOption { type = lib.types.str; }; */

    foregroundBlue = lib.mkOption { type = lib.types.str; };
    foregroundRed = lib.mkOption { type = lib.types.str; };
    foregroundGreen = lib.mkOption { type = lib.types.str; };
    foregroundYellow = lib.mkOption { type = lib.types.str; };
    foregroundMagenta = lib.mkOption { type = lib.types.str; };
    foregroundCyan = lib.mkOption { type = lib.types.str; };

    backgroundBlue = lib.mkOption { type = lib.types.str; };
    backgroundRed = lib.mkOption { type = lib.types.str; };
    backgroundGreen = lib.mkOption { type = lib.types.str; };
    backgroundYellow = lib.mkOption { type = lib.types.str; };
    backgroundMagenta = lib.mkOption { type = lib.types.str; };
    backgroundCyan = lib.mkOption { type = lib.types.str; };

    brightBlue = lib.mkOption { type = lib.types.str; };
    brightRed = lib.mkOption { type = lib.types.str; };
    brightGreen = lib.mkOption { type = lib.types.str; };
    brightYellow = lib.mkOption { type = lib.types.str; };
    brightMagenta = lib.mkOption { type = lib.types.str; };
    brightCyan = lib.mkOption { type = lib.types.str; };

    primary = lib.mkOption { type = lib.types.str; };
    secondary = lib.mkOption { type = lib.types.str; };
    urgent = lib.mkOption { type = lib.types.str; };

    /* 16 terminal colors */
    termBlack = lib.mkOption { type = lib.types.str; };
    termRed = lib.mkOption { type = lib.types.str; };
    termGreen = lib.mkOption { type = lib.types.str; };
    termYellow = lib.mkOption { type = lib.types.str; };
    termBlue = lib.mkOption { type = lib.types.str; };
    termMagenta = lib.mkOption { type = lib.types.str; };
    termCyan = lib.mkOption { type = lib.types.str; };
    termWhite = lib.mkOption { type = lib.types.str; };
    termBrightBlack = lib.mkOption { type = lib.types.str; };
    termBrightRed = lib.mkOption { type = lib.types.str; };
    termBrightGreen = lib.mkOption { type = lib.types.str; };
    termBrightYellow = lib.mkOption { type = lib.types.str; };
    termBrightBlue = lib.mkOption { type = lib.types.str; };
    termBrightMagenta = lib.mkOption { type = lib.types.str; };
    termBrightCyan = lib.mkOption { type = lib.types.str; };
    termBrightWhite = lib.mkOption { type = lib.types.str; };
  };

  config =
    let
      gradient-svg = import ./gradient-svg.nix { inherit pkgs; };
      gradient-png = import ./gradient-png.nix { inherit pkgs; svg = gradient-svg; };
    in
    {
      theme = rec {
        borderRadius = 8;
        borderWidth = 4;
        gaps = 16;
        # wallpaper = ./wallpapers/nightsky.jpg;
        wallpaper = gradient-png;
        cursorTheme = "Adwaita";
        cursorSize = 24;

        # wikimedia codex
        foreground = "#000000";
        foreground2 = "#404244";
        foreground3 = "#72777d";
        foreground4 = "#a2a9b1";
        foregroundSelect = foreground;
        foregroundOverlay = background;
        foregroundOverlay2 = background3;
        foregroundOverlaySelect = background;

        background = "#ffffff";
        background2 = "#f8f9fa";
        background3 = "#eaecf0";
        background4 = "#c8ccd1";
        backgroundSelect = background3;
        backgroundOverlay = foreground2;
        backgroundOverlay2 = foreground3;
        backgroundOverlaySelect = foregroundCyan;

        foregroundRed = "#b32424";
        foregroundGreen = "#14866d";
        foregroundYellow = "#ac6600";
        foregroundBlue = "#3366cc";
        foregroundMagenta = "#A824B3";
        foregroundCyan = "#1e8195";

        backgroundRed = "#fee7e6";
        backgroundGreen = "#d5fdf4";
        backgroundYellow = "#fef6e7";
        backgroundBlue = "#eaf3ff";
        backgroundMagenta = "#f9e7fa";
        backgroundCyan = "#daf2f7";

        brightRed = "#ff4242";
        brightGreen = "#00af89";
        brightYellow = "#ffcc33";
        brightBlue = "#447ff5";
        brightMagenta = "#ce46da";
        brightCyan = "#2bb7d3";

        primary = foregroundCyan;
        secondary = foregroundMagenta;
        urgent = termRed;
        /* foregroundUrgentOverlay = foregroundMagenta; */

        termBlack = background;
        termBrightBlack = foreground3;
        termWhite = foreground;
        termBrightWhite = foreground3;
        termRed = foregroundRed;
        termBrightRed = brightRed;
        termGreen = foregroundGreen;
        termBrightGreen = brightGreen;
        termYellow = foregroundYellow;
        termBrightYellow = brightYellow;
        termBlue = foregroundBlue;
        termBrightBlue = brightBlue;
        termMagenta = foregroundMagenta;
        termBrightMagenta = brightMagenta;
        termCyan = foregroundCyan;
        termBrightCyan = brightCyan;
      };
    };
}
