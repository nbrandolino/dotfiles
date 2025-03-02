# Dot Files
This repository holds the my personal dot files for `Alacritty`, `Btop`, `Neovim`, `Tmux`, `Vim`, and `Zsh`. It contains a makefile for easy install.

## Requirements
- **Alacritty**
- **Btop**
- **Neovim**
- **Tmux**
- **Vim**
- **Zsh**

## Installation
### Install All
```bash
cd ./dotfiles
```
```bash
make install
```

### Install Individually
To install Individually, use the following commands:
```bash
cd ./dotfiles
```
1. **Alacritty**:
    ```bash
    make alacritty
    ```
2. **Btop**:
    ```bash
    make btop
    ```
3. **Neovim**:
    ```bash
    make nvim
    ```
4. **Tmux**:
    ```bash
    make tmux
    ```
5. **Vim**:
    ```bash
    make vim
    ```
6. **Zsh**:
    ```bash
    make zsh
    ```

## Disclaimer
Using the Makefile will overwrite all of the dotfiles for these applications. Use with caution.

## License
This tool is licensed under the GNU General Public License (GPL). See ./LICENSE for more details.

## Contact
- **Author**: nbrandolino
- **Email**: [nickbrandolino134@gmail.com](mailto:nickbrandolino134@gmail.com)
