-- lua/plugins/vimtex.lua
return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX as it manages filetypes
  init = function()
    -- Option B: Detailed latexmk configuration with LuaLaTeX enforcement

    vim.g.vimtex_view_method = "skim" -- Recommended for macOS (or 'zathura')

    -- vim.g.vimtex_compiler_method = "arara"
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-xelatex",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
      },
    }

    -- Force LuaLaTeX

    -- vim.g.vimtex_compiler_latexmk = {
    --   build_dir = "",
    --   callback = 1,
    --   continuous = 1,
    --   executable = "latexmk",
    --   hooks = {},
    --   options = {
    --     "-lualatex", -- FORCE LuaLaTeX engine
    --     "-verbose",
    --     "-file-line-error",
    --     "-synctex=1",
    --     "-interaction=nonstopmode",
    --   },
    -- }
  end,
}
