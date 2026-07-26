return {
  {
    "aidavdw/bibcite.nvim",
    -- Running these commands triggers lazy load. They are still auto-completed.
    cmd = { "CiteOpen", "CiteInsert", "CitePeek", "CiteNote" },
    -- Hitting these keybinds triggers lazy-load. They still show up in which-keys.
    keys = {
      { "<leader>ci", ":CiteInsert<CR>", desc = "Insert citation" },
      { "<leader>cp", ":CitePeek<CR>", desc = "Peek citation info" },
      { "<leader>co", ":CiteOpen<CR>", desc = "Open citation file" },
      { "<leader>cn", ":CiteNote<CR>", desc = "Open citation note" },
    },
    -- Configuration goes here! See the config section.
    opts = {
      -- This is just an example
      bibtex_path = "/Users/zhengpanpan/Downloads/graduation_dissertation/ref/graduation.bib",
      -- pdf_dir = "~",
      -- notes_dir = "~/Documents/research/notes",
      text_file_open_mode = "vsplit",
    },
  },
}
