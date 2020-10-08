let
  unstable = import ./unstable.nix;
in
{ pkgs ? unstable }:
removeAttrs (pkgs.mkShell {
  buildInputs = with pkgs; [
    arduino
  ];

  ARDUINO_PATH = "${pkgs.arduino}/share/arduino";
}) [ "CXX" "CC" "AR" ] # otherwise they override arduino tools
