local M = {}

---Marble-specific highlight group overrides.
---
---In marble, many semantic roles collapsed into a single teal color
---(#2c9279 via `c.blue`). This file redistributes them across
---underused palette keys (blue0, magenta2) to match the visual
---variety present in the obsidian variant.
---
---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- ── Properties, fields, members ─────────────────
    -- In obsidian: #6b92e3 (periwinkle) — distinct from functions #52c9b0
    -- In marble:   c.blue0 (#4a6dc0) — distinct from functions c.cyan (#365ca8)
    ["@property"]           = { fg = c.blue0 }, -- was c.blue
    ["@field"]              = { fg = c.blue0 }, -- was c.blue
    ["@variable.member"]    = { fg = c.blue0 }, -- was c.blue
    ["@symbol"]             = { fg = c.blue0 }, -- was c.blue

    -- ── Tags ────────────────────────────────────────
    -- Give tags a vivid accent distinct from everything else
    ["@tag"]                = { fg = c.magenta2 }, -- was Label (c.blue)
    ["@tag.delimiter"]      = { fg = c.magenta2 }, -- match @tag

    -- ── Links ───────────────────────────────────────
    -- Match functions color, as in obsidian (links = cyan)
    ["@markup.link"]        = { fg = c.cyan }, -- was c.teal
    ["@markup.link.label"]  = { fg = c.cyan }, -- was SpecialChar (c.blue1)
    ["@text.reference"]     = { fg = c.cyan }, -- was c.teal

    -- ── YAML nested keys ───────────────────────────
    -- Root keys use cyan (c.cyan). Nested keys use blue0
    -- for clear depth distinction.
    ["@property.yaml"]      = { fg = c.blue0 }, -- was c.blue

    -- ── JSON keys get cyan like functions/YAML roots ─
    -- (keep default, just here for clarity)
    -- ["@property.json"]    = unchanged (c.cyan)

    -- ── Markdown inline code bg needs more definition ─
    ["@markup.raw.markdown_inline"] = { bg = c.blue7, fg = c.fg },
    ["@text.literal.markdown_inline"] = { bg = c.blue7, fg = c.fg },
    ["@markup.raw"]                 = { bg = c.blue7, fg = c.fg },
    ["@text.literal"]               = { bg = c.blue7, fg = c.fg },
  }
end

return M
