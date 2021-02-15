let
  # TODO: switch back to fetchgit
  # TODO: attempt to convert to flake?
  zig-overlay = import ../zig-overlay/default.nix;
  pkgs = import <nixpkgs> { overlays = [ zig-overlay ]; };
  zig = pkgs.zig.master;
in pkgs.mkShell {
  buildInputs = [ zig ];
}
