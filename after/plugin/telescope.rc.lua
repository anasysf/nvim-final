local ok, telescope = pcall(require, "telescope")
if not ok then
  return vim.notify(
    "COULD NOT LOAD TELESCOPE",
    vim.log.levels.ERROR,
    { title = "Telescope" }
  )
end

local builtin_ok, builtin = pcall(require, "telescope.builtin")
if not builtin_ok then
  return vim.notify(
    "COULD NOT LOAD TELESCOPE [BUILTIN]",
    vim.log.levels.ERROR,
    { title = "Telescope [builtin]" }
  )
end

telescope.setup {
  defaults = {
    path_display = {
      truncate = 3,
    },
  },
}

local keymap = vim.keymap
keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
