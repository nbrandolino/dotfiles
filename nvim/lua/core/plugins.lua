local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- packer plugin
  use 'wbthomason/packer.nvim'

  -- color name highlighter
  use 'ap/vim-css-color'

  -- navigate tmux while in nvim
  use 'christoomey/vim-tmux-navigator'

  -- barbar git signs
  use 'lewis6991/gitsigns.nvim'

  -- lua module
  use 'nvim-lua/plenary.nvim'

  -- nvim web devicons
  use 'nvim-tree/nvim-web-devicons'

  -- nerd tree
  use 'preservim/nerdtree'

  -- tagbar search for functions
  use 'preservim/tagbar'

  -- tab bars
  use 'romgrk/barbar.nvim'

  -- development icons
  use 'ryanoasis/vim-devicons'

  -- edge theme
  use 'sainnhe/edge'

  -- lua language packs
  use 'sheerun/vim-polyglot'

  -- comment things out with shortcuts
  use 'tpope/vim-commentary'

  -- nvim status bar
  use 'vim-airline/vim-airline'

  -- nvim status bar themes
  use 'vim-airline/vim-airline-themes'

  -- automatically pair () {} etc
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }

  -- nerd tree git plugin
  use 'Xuyuanp/nerdtree-git-plugin'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
