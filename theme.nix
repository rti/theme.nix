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

    lightBlue = lib.mkOption { type = lib.types.str; };
    lightRed = lib.mkOption { type = lib.types.str; };
    lightGreen = lib.mkOption { type = lib.types.str; };
    lightYellow = lib.mkOption { type = lib.types.str; };
    lightMagenta = lib.mkOption { type = lib.types.str; };
    lightCyan = lib.mkOption { type = lib.types.str; };

    brightBlue = lib.mkOption { type = lib.types.str; };
    brightRed = lib.mkOption { type = lib.types.str; };
    brightGreen = lib.mkOption { type = lib.types.str; };
    brightYellow = lib.mkOption { type = lib.types.str; };
    brightMagenta = lib.mkOption { type = lib.types.str; };
    brightCyan = lib.mkOption { type = lib.types.str; };

    primary = lib.mkOption { type = lib.types.str; };
    secondary = lib.mkOption { type = lib.types.str; };
    urgent = lib.mkOption { type = lib.types.str; };
    backgroundPrimary = lib.mkOption { type = lib.types.str; };
    backgroundSecondary = lib.mkOption { type = lib.types.str; };
    backgroundUrgent = lib.mkOption { type = lib.types.str; };

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
      gradient-png = import ./gradient-png.nix { inherit pkgs; };
    in
    {
      theme = rec {
        borderRadius = 8;
        borderWidth = 4;
        gaps = 16;
        wallpaper = ./wallpapers/geometric-abstract-3840x2160-23187.jpg;
        # wallpaper = gradient-png;
        cursorTheme = "Adwaita";
        cursorSize = 24;

        # Teal and copper hues with the original HSL saturation and lightness.
        foreground = "#000000";
        foreground2 = "#404344";
        foreground3 = "#727a7d";
        foreground4 = "#a2adb1";
        foregroundSelect = foreground;
        foregroundOverlay = background;
        foregroundOverlay2 = background3;
        foregroundOverlaySelect = background;

        background = "#ffffff";
        background2 = "#f8f9fa";
        background3 = "#eaeef0";
        background4 = "#c8cfd1";
        backgroundSelect = background3;
        backgroundOverlay = foreground2;
        backgroundOverlay2 = foreground3;
        backgroundOverlaySelect = foregroundCyan;

        foregroundRed = "#b34124";
        foregroundGreen = "#14866b";
        foregroundYellow = "#ac6700";
        foregroundBlue = "#1e7595";
        foregroundMagenta = "#b3243c";
        foregroundCyan = "#1e8195";

        backgroundRed = "#feebe6";
        backgroundGreen = "#d5fdf4";
        backgroundYellow = "#ffe3ba";
        backgroundBlue = "#eaf9ff";
        backgroundMagenta = "#fae7ea";
        backgroundCyan = "#daf2f7";

        lightRed = "#ffa994";
        lightGreen = "#6bd6bd";
        lightYellow = "#ffd18d";
        lightBlue = "#97e0fa";
        lightMagenta = "#ea97a5";
        lightCyan = "#83d5e5";

        brightRed = "#ff6842";
        brightGreen = "#00af86";
        brightYellow = "#ffad33";
        brightBlue = "#44c6f5";
        brightMagenta = "#da465f";
        brightCyan = "#2bb7d3";

        primary = brightCyan;
        secondary = brightMagenta;
        urgent = brightRed;
        # TODO: fix confusing naming
        backgroundPrimary = foregroundCyan;
        backgroundSecondary = foregroundMagenta;
        backgroundUrgent = foregroundRed;

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
