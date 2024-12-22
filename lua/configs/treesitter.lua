local options = {
  ensure_installed = {
    "bash",
    "fish",
    "lua",
    "luadoc",
    "markdown",
    "printf",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
    "go",
    "gomod",
    "gosum",
    "gotmpl",
    "gowork",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
    package = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
