let
  unstable = import ./unstable.nix;
in
{ pkgs ? unstable }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    arduino
  ];

  ARDUINO_PATH = "${pkgs.arduino}/share/arduino";
}
