# Portfolio-Website
This is the source code for my personal website. The site is a static site which is built by Zola.

# Installation
## Nix (recommended)
Users of a system with the Nix package manager can use the provided flake by running 
```bash
nix develop
```
in the project directory (or with a tool like direnv to automatically activate the environment).

### Arch
The dependencies can be installed with
```bash
sudo pacman -S zola aspell
```

## Homebrew (macOS)
The dependencies can be installed with
```bash
brew install zola aspell
```

## Other Systems
The only dependency to build this project is [Zola](https://www.getzola.org/), which can be downloaded from [their installation guide](https://www.getzola.org/documentation/getting-started/installation/). To run the spellchecking script, you must also have ```aspell``` installed, which is probably in your distro's package manager.

# Credits
The colour palette for this website is original, but heavily inspired by the excellent [Nyx8 Palette](https://lospec.com/palette-list/nyx8)
