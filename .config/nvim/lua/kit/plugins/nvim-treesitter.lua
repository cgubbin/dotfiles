return {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        "bash",
        "css",
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "rust",
        "tsx",
        "typescript",
        "vim",
        "yaml",
	},
    },
    build = function()
        pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
    dependencies = {
	'nvim-treesitter/nvim-treesitter-textobjects',
    }
}
