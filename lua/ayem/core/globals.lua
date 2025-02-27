local ok, utils = pcall(require, 'ayem.core.utils')
if not ok then
  return vim.notify(
    "COULD NOT LOAD UTILS",
    vim.log.levels.ERROR,
    { title = "Utils" }
  )
end

local g = vim.g

g.is_win = (utils.has("win32") or utils.has("win64")) and true or false

g.logging_level = "info"

g.loaded_perl_provider = 0 -- Disable perl provider
g.loaded_ruby_provider = 0 -- Disable ruby provider
g.loaded_node_provider = 0 -- Disable node provider
g.did_install_default_menus = 1 -- do not load menu

if g.is_win then
  g.netrw_http_cmd = "curl --ssl-no-revoke -Lo"
end

g.loaded_2html_plugin = 1

g.loaded_zipPlugin = 1
g.loaded_gzip = 1
g.loaded_tarPlugin = 1

g.loaded_tutor_mode_plugin = 1

g.loaded_matchit = 1
g.loaded_matchparen = 1

g.loaded_sql_completion = 1
