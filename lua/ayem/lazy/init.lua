require("ayem.lazy.bootstrap")

local ok, lazy = pcall(require, "lazy")
if not ok then
  return vim.notify("COULD NOT LOAD LAZY", vim.log.levels.ERROR, { title = "Lazy" })
end

lazy.setup({
  spec = {
    -- import your plugins
    { import = "ayem.lazy.plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "gruvbox" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
