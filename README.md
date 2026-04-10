# Dotfiles
Personal dotfiles for `Alacritty`, `Btop`, `Neovim`, `Tmux`, `Vim`, and `Zsh`, with a Makefile for easy installation.

## Requirements
- **Alacritty**
- **Btop**
- **Neovim**
- **Tmux**
- **Vim**
- **Zsh**

---

## Installation
### Install All
1. Navigate to the project directory:
   ```bash
   cd dotfiles
   ```
2. Install:
   ```bash
   make install
   ```

### Install Individually
1. Navigate to the project directory:
   ```bash
   cd dotfiles
   ```
2. Run the target for the config you want:

| Target | Description |
|---|---|
| `make alacritty` | Install Alacritty config |
| `make btop` | Install Btop config |
| `make nvim` | Install Neovim config |
| `make tmux` | Install Tmux config |
| `make vim` | Install Vim config |
| `make zsh` | Install Zsh config and plugins |

---

## Disclaimer
Using the Makefile will overwrite existing dotfiles for these applications. Use with caution.
> **Note:** This GitHub repository is a mirror of a private, self-hosted GitLab repository.

---

## License
This project is licensed under the GNU General Public License (GPL). See the `LICENSE` file for more details.

## Contact
- **Author**: nbrandolino
- **Email**: [nickbrandolino134@gmail.com](mailto:nickbrandolino134@gmail.com)
