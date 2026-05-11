local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Structure: cyan
    WhichKey           = { fg = c.orange }, -- label principal: iconos y numeros en naranja
    WhichKeyNormal     = { fg = c.fg, bg = c.bg_float },
    WhichKeyBorder     = { fg = c.cyan, bg = c.bg_float }, -- borde cyan, fondo base
    WhichKeyFloat      = { fg = c.cyan, bg = c.bg_float }, -- floating window
    WhichKeySeparator = { fg = c.cyan }, -- separador: cyan
    -- Details: blue
    WhichKeyGroup     = { fg = c.blue }, -- nombre de grupo/opciones: azul
    WhichKeyDesc      = { fg = c.blue }, -- descripcion del keybinding: azul
    WhichKeyValue     = { fg = c.fg }, -- value hint: texto principal
  }
end

return M
