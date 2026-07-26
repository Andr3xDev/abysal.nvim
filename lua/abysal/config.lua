local M = {}
M.version = "1.0.0"
---@class abysal.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: abysal.Highlights, colors: ColorScheme)
M.defaults = {
  style = "auto",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    sidebars = "dark",
    floats = "dark",
  },
  dim_inactive = false,
  lualine_bold = false,
  ---@param colors ColorScheme
  on_colors = function(colors) end,
  ---@param highlights abysal.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
  cache = true,
  gnome_theme_sync = false,
  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    all = package.loaded.lazy == nil,
    auto = true,
  },
}
---@type abysal.Config
M.options = nil
---@param options? abysal.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? abysal.Config
function M.extend(opts)
  local merged = vim.tbl_deep_extend("force", {}, M.options, opts or {})
  if merged.style == "auto" then
    merged.style = vim.o.background == "light" and "marble" or "obsidian"
  end
  return merged
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})
return M
