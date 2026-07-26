return {
  "NvChad/nvim-colorizer.lua",
  opts = {
    -- 在这里定义文件类型
    filetypes = {
      "*", -- 保持对所有其他文件默认开启（如果你只想对 toml 开启，可以删掉这一行）
      "toml", -- 明确指定对 toml 文件开启

      -- 你甚至可以为 toml 文件单独覆盖默认配置：
      -- toml = { names = true, tailwind = false },
    },
    user_default_options = {
      tailwind = true, -- 开启 Tailwind CSS 颜色代码高亮
      names = false, -- 禁用常见颜色单词的高亮（如 'blue', 'red'）
    },
  },
}
