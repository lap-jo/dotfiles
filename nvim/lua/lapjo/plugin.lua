local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    {"folke/which-key.nvim"},
    {"folke/neoconf.nvim",
    cmd = "Neoconf"
},
{"folke/neodev.nvim"},
{"ellisonleao/gruvbox.nvim"},

{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'main',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },             -- Required
        { 'williamboman/mason.nvim' },           -- Optional
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },         -- Required
        { 'hrsh7th/cmp-nvim-lsp' },     -- Required
        { 'hrsh7th/cmp-buffer' },       -- Optional
        { 'hrsh7th/cmp-path' },         -- Optional
        { 'saadparwaiz1/cmp_luasnip' }, -- Optional
        { 'hrsh7th/cmp-nvim-lua' },     -- Optional

        -- Snippets
        -- { 'L3MON4D3/LuaSnip' , branch = 'v2.2.0' },             -- Required
        { 'rafamadriz/friendly-snippets' }, -- Optional
    }
},
{
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies =  { 'nvim-lua/plenary.nvim'  }
},
{
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").setup()
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
},

--  'manzeloth/live-server'
{
    "aurum77/live-server.nvim",
    run = function()
        require"live_server.util".install()
    end,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
},

{
    "kylechui/nvim-surround",
    branch = "main", -- Use for stability; omit to  `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to  defaults
        })
    end
},

{
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
},

{
    "windwp/nvim-autopairs",
    config = function()
        require("nvim-autopairs").setup {}
    end
},

{ "dhruvasagar/vim-table-mode" },
-- { 'vimwiki/vimwiki' },
{'chipsenkbeil/vimwiki-server.nvim'},
{
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-treesitter/nvim-treesitter" },
    }
},
{
    'norcalli/nvim-colorizer.lua',
    config = function() require('colorizer').setup() end
},

{"folke/zen-mode.nvim"},

'UtkarshVerma/molokai.nvim',

{"folke/twilight.nvim"},

{"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
-- {'iamcco/markdown-preview.nvim'},

'navarasu/onedark.nvim',

'folke/tokyonight.nvim',

{ "David-Kunz/gen.nvim" },

})

