local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Structure: cyan
    WhichKey           = { fg = c.primary }, -- label principal: iconos y numeros en naranja
    WhichKeyNormal     = { fg = c.fg, bg = c.bg },
    WhichKeyBorder     = { fg = c.border, bg = c.bg }, -- borde normal, fondo base
    WhichKeyFloat      = { fg = c.blue, bg = c.bg }, -- floating window
    WhichKeySeparator = { fg = c.blue }, -- separador: cyan
    -- Details: texto principal
    WhichKeyGroup     = { fg = c.fg }, -- nombre de grupo: texto (close/back en azul via popup)
    WhichKeyDesc      = { fg = c.fg }, -- descripcion del keybinding: texto
    WhichKeyValue     = { fg = c.fg_secondary }, -- value hint: texto secundario
  }
end

return M
