---@class abysal.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias abysal.Highlights table<string,abysal.Highlight|string>

---@alias abysal.HighlightsFn fun(colors: ColorScheme, opts:abysal.Config):abysal.Highlights

---@class abysal.Cache
---@field groups abysal.Highlights
---@field inputs table
