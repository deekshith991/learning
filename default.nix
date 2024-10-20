{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "learning-env";

  buildInputs = [
    pkgs.nodejs # For JavaScript/Node.js
    pkgs.neovim # Neovim for text editing
    pkgs.openjdk # For Java development
  ];

  shellHook = ''
  echo "Welcome to the learning environment!"
  export PATH=$PATH:./node_modules/.bin 
  
'';

}

