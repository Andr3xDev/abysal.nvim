local config = require("abysal.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@type ColorScheme?
M._colors_cache = nil
---@type integer?
M._cache_autocmd = nil

local function ensure_cache_invalidation()
  if M._cache_autocmd then
    return
  end
  M._cache_autocmd = vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
      M._colors_cache = require("abysal.colors").setup()
    end,
  })
end

---@return ColorScheme
function M.colors()
  ensure_cache_invalidation()
  if not M._colors_cache then
    M._colors_cache = require("abysal.colors").setup()
  end
  return M._colors_cache
end

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
