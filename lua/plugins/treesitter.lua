return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "scss",
        "json",
        "json5",
        "jsonc",
        "ron",
        "rust",
        "toml",
      },
      rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        colors = {
          "#C83F39",
          "#F07F5E",
          "#F8De7E",
          "#93c572",
          "#B768A2",
        }, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
        strategy = "global",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    init = function()
      -- disable rtp plugin, as we only need its queries for mini.ai
      -- In case other textobject modules are enabled, we will load them
      -- once nvim-treesitter is loaded
      require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
      load_textobjects = true
    end,
  },
}
