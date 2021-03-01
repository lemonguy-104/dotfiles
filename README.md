To setup the dotfiles [GNU Stow](https://www.gnu.org/software/stow) is used.

How to:
```bash
# Get my dotfiles.
cd ~
git clone --recurse-submodules https://github.com/lemonguy-104/dotfiles.git ~/.dotfiles
cd .dotfiles

# Symlink all of them.
rm LICENSE README.md
stow *

# Symlink only one, in this case, urxvt.
stow urxvt
```

Disclamer: some things may look weird, like urxvt or alacritty, because they use Mononoki Nerd Font and it needs to be installed to make them look as they should.
