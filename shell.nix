{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell rec {
	buildInputs = with pkgs; [
		pdflatex
		tectonic
		gnumake
	];
	shellHook = ''
		PS1="\e[32;1mnix-shell: \e[34m\w \[\033[00m\]\n↳ "
	'';
}
