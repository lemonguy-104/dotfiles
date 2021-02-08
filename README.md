To setup the dotfiles [GNU Stow](https://www.gnu.org/software/stow) is used.

How to:
```bash
# Get my dotfiles.
cd ~
git clone --recurse-submodules https://github.com/lemonguy-104/dotfiles.git
cd dotfiles

# Symlink all of them.
stow *

# Symlink only one, in this case, Xresources.
stow urxvt
```

Disclamer: something may look weird, like Xresources, because it uses Mononoki Nerd Font and it needs to be installed to look as ot should.
