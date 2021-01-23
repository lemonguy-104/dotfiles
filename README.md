To setup the dotfiles [GNU Stow](https://www.gnu.org/software/stow) is used

How to:
```bash
# Get my dotfiles
git clone https://github.com/lemonguy-104/dotfiles
cd dotfiles

# Symlink all of them
stow * (to symlink all of the)

# Symlink only one, in this case, Xresources
stow Xresources
```
