local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Structure: cyan
    WhichKey           = { fg = c.orange }, -- label principal: iconos y numeros en naranja
    WhichKeyNormal     = { fg = c.fg, bg = c.bg },
    WhichKeyBorder     = { fg = c.cyan, bg = c.bg }, -- borde cyan, fondo base
    WhichKeyFloat      = { fg = c.cyan, bg = c.bg }, -- floating window
    WhichKeySeparator = { fg = c.cyan }, -- separador: cyan
    -- Details: texto principal
    WhichKeyGroup     = { fg = c.fg }, -- nombre de grupo: texto (close/back en azul via popup)
    WhichKeyDesc      = { fg = c.fg }, -- descripcion del keybinding: texto
    WhichKeyValue     = { fg = c.fg_dark }, -- value hint: texto secundario
  }
end

return M
