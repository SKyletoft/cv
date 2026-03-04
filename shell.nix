{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
	buildInputs = with pkgs; [
		typst
		tinymist
		tectonic
		gnumake
	];
	shellHook = ''
		PS1="\e[32;1mnix-shell: \e[34m\w \[\033[00m\]\n↳ "
	'';
}
