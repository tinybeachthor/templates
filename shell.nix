{ pkgs
, mkPython
}:

let
  pyEnv = mkPython {
    requirements = ''
    '';
  };
in

with pkgs;

mkShell {
  buildInputs = [
    pyEnv
  ];
  shellHook = ''
  '';
}
