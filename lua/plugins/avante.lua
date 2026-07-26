return {
  "yetone/avante.nvim",
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  -- ⚠️ must add this setting! ! !
  build = vim.fn.has("win32") ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    or "make",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    -- add any opts here
    -- this file can contain specific instructions for your project
    instructions_file = "avante.md",
    -- for example
    -- provider = "aihubmix",
    -- providers = {
    --   aihubmix = {
    --     -- endpoint = "https://aihubmix.com/v1",
    --     model = "claude-opus-4-5",
    --     timeout = 30000, -- Timeout in milliseconds
    --     extra_request_body = {
    --       temperature = 0.75,
    --       max_tokens = 20480,
    --     },
    --   },
    -- },
    -- provider = "openrouter",
    -- providers = {
    --   claude = {
    --     endpoint = "https://openrouter.ai/api/v1",
    --     model = "claude-sonnet-4-20250514",
    --     timeout = 30000, -- Timeout in milliseconds
    --     extra_request_body = {
    --       temperature = 0.75,
    --       max_tokens = 20480,
    --     },
    --   },
    -- },
    provider = "gemini-cli",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,

    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
