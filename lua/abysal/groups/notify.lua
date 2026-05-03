local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Base
    NotifyBackground  = { fg = c.fg, bg = c.bg },
    NotifyDEBUGBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyERRORBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyINFOBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyWARNBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    -- Borders: cyan (structural)
    NotifyDEBUGBorder = { fg = c.cyan, bg = opts.transparent and c.none or c.bg },
    NotifyERRORBorder = { fg = c.cyan, bg = opts.transparent and c.none or c.bg },
    NotifyINFOBorder  = { fg = c.cyan, bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = c.cyan, bg = opts.transparent and c.none or c.bg },
    NotifyWARNBorder  = { fg = c.cyan, bg = opts.transparent and c.none or c.bg },
    -- Icons/titles: severity color stays for clarity (error=red, warn=yellow, info=cyan, trace=purple)
    NotifyDEBUGIcon   = { fg = c.comment },
    NotifyDEBUGTitle  = { fg = c.comment },
    NotifyERRORIcon   = { fg = c.error },
    NotifyERRORTitle  = { fg = c.error },
    NotifyINFOIcon    = { fg = c.info },
    NotifyINFOTitle   = { fg = c.info },
    NotifyTRACEIcon   = { fg = c.purple },
    NotifyTRACETitle  = { fg = c.purple },
    NotifyWARNIcon    = { fg = c.warning },
    NotifyWARNTitle   = { fg = c.warning },
  }
end

return M
