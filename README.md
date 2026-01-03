# Alikay's Personal Website
This is the source code for my personal website. The site is a static site which is built with Zola.

# Installation
## Nix (recommended)
Users of a system with the Nix package manager can use the provided flake by running 
```bash
nix develop
```
in the project directory (or with a tool like direnv to automatically activate the environment). Alternatively, you can also enter your own dev shell with 
```bash
nix-shell -p zola aspell imagemagick
```

### Arch
The dependencies can be installed with
```bash
sudo pacman -S zola aspell imagemagick
```

## Homebrew (Linux + macOS)
The dependencies can be installed with
```bash
brew install zola aspell imagemagick
```

## Other Systems
The only dependency to build this project is [Zola](https://www.getzola.org/), which can be downloaded from [their installation guide](https://www.getzola.org/documentation/getting-started/installation/). To run the spellchecking script, you must also have ```aspell``` installed, which is probably in your distro's package manager. Simmilarily, to run the image resizing script you need to have imagemagick installed.

# Credits
The colour palette for this website is original, but heavily inspired by the excellent [Nyx8 Palette](https://lospec.com/palette-list/nyx8)
