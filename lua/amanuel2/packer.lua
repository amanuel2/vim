-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    
        use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    

        use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end, }


            use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context")
    use('fatih/vim-go')
    use 'voldikss/vim-floaterm'
    use 'feline-nvim/feline.nvim'
    -- use 'vim-airline/vim-airline'
    -- use 'vim-airline/vim-airline-themes'
    use "terrortylor/nvim-comment"
    use "nvim-lua/plenary.nvim"
    use "amitds1997/remote-nvim.nvim"
    use "github/copilot.vim"
    use "nvim-telescope/telescope-fzf-native.nvim" 
    use "nvim-telescope/telescope-ui-select.nvim"
    use 'mfussenegger/nvim-dap'

        use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },

            --tools
            { 'simrat39/rust-tools.nvim' }
        }
    }
    
        use 'nvim-tree/nvim-web-devicons'
        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional
            },
        }

    use({
        'Mofiqul/dracula.nvim',
        as = 'dracula',
        config = function()
            vim.cmd('colorscheme dracula')
        end
    })
    use { 'dasupradyumna/midnight.nvim' }
    use {
        'xbase-lab/xbase',
        run = 'make install', -- or "make install && make free_space" (not recommended, longer build time)
        requires = {
            "neovim/nvim-lspconfig",
            -- "nvim-telescope/telescope.nvim", -- optional
            -- "nvim-lua/plenary.nvim", -- optional/requirement of telescope.nvim
            -- "stevearc/dressing.nvim", -- optional (in case you don't use telescope but something else)
        },
        config = function()
            require 'xbase'.setup({}) -- see default configuration bellow
        end
    }

    -- use 'm4xshen/hardtime.nvim'
    use 'mfussenegger/nvim-dap'


  use({
    "stevearc/aerial.nvim",
    config = function()
      require("aerial").setup({
    })
    end,
  })

end)
