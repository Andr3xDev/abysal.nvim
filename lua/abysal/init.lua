local config = require("abysal.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? abysal.Config
function M.load(opts)
  opts = require("abysal.config").extend(opts)
  local bg = vim.o.background
  local style_bg = opts.style == "marble" and "light" or "dark"

  if bg ~= style_bg then
    if vim.g.colors_name == "abysal-" .. opts.style then
      opts.style = bg == "light" and (M.styles.light or "marble") or (M.styles.dark or "obsidian")
    else
      vim.o.background = style_bg
    end
  end
  M.styles[vim.o.background] = opts.style
  return require("abysal.theme").setup(opts)
end

---@param options? abysal.Config
function M.setup(options)
  config.setup(options)
  if config.options.gnome_theme_sync then
    require("abysal.sync").setup()
  end
end

return M
