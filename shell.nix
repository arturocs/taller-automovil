{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    hugo
    nodejs_20
    go
    git
  ];

  shellHook = ''
    echo "Welcome to the Taller Automovil development shell!"
    echo "Hugo: $(hugo version)"
    echo "Node: $(node -v)"
    echo "Go:   $(go version)"
  '';
}
