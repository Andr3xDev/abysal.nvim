local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    -- General
    RenderMarkdownBullet       = { fg = c.blue },                         -- list bullets (* -)
    RenderMarkdownDash         = { fg = c.fg_secondary },                      -- horizontal rule (---)
    RenderMarkdownSign         = { fg = c.fg_secondary },                      -- sign column indicator
    RenderMarkdownIndent       = { fg = c.bg_highlight },                 -- indentation guides
    RenderMath                 = { fg = c.blue },                       -- math blocks
    RenderMarkdownHtmlComment  = { fg = c.fg_muted, italic = true },       -- HTML comments

    -- Code blocks
    RenderMarkdownCode         = { bg = c.bg_elevated },                      -- fenced code block background
    RenderMarkdownCodeInfo     = { fg = c.blue, bg = c.bg_elevated, italic = true }, -- code block language info
    RenderMarkdownCodeBorder   = { fg = c.fg_secondary, bg = c.bg_elevated },      -- code block border line
    RenderMarkdownCodeFallback = { fg = c.fg, bg = c.bg_elevated },           -- code block fallback
    RenderMarkdownCodeInline   = { bg = c.bg_elevated, fg = c.fg },    -- inline code span

    -- Tables (borders are cyan uniformly; header text is bold cyan)
    RenderMarkdownTableHead    = { fg = c.blue, bold = true },            -- table header row
    RenderMarkdownTableRow     = { fg = c.blue },                         -- table body rows
    RenderMarkdownTableFill    = { fg = c.blue },                         -- table filler cells

    -- Links
    RenderMarkdownLink         = { fg = c.blue, underline = true },       -- link text

    -- Checkboxes (visible colors so they don't blend into bg)
    RenderMarkdownUnchecked    = { fg = c.primary },                       -- [ ] unchecked (visible on bg)
    RenderMarkdownChecked      = { fg = c.blue },                         -- [x] checked
    RenderMarkdownTodo         = { fg = c.amber },                       -- [-] pending

    -- Blockquotes & callouts (soft bg so they look like colored blocks)
    RenderMarkdownQuote        = { fg = c.blue, italic = true, bg = Util.blend_bg(c.blue, 0.08) },

    -- Callout types (fg + subtle bg for aesthetic block labels)
    RenderMarkdownSuccess      = { fg = c.green, bg = Util.blend_bg(c.green, 0.10) },  -- TIP, SUCCESS, CHECK, DONE
    RenderMarkdownInfo         = { fg = c.blue, bg = Util.blend_bg(c.blue, 0.10) },    -- NOTE, INFO, TODO, ABSTRACT
    RenderMarkdownHint         = { fg = c.blue, bg = Util.blend_bg(c.blue, 0.10) },    -- IMPORTANT, EXAMPLE
    RenderMarkdownWarn         = { fg = c.primary, bg = Util.blend_bg(c.primary, 0.10) }, -- WARNING, QUESTION, HELP, ATTENTION
    RenderMarkdownError        = { fg = c.gold, bg = Util.blend_bg(c.gold, 0.10) },      -- ERROR, DANGER, FAILURE, BUG
  }

  -- Headings: custom order (H1 orange → H2 cyan → H3 yellow → H4 red → H5 blue → H6 purple)
  local headings = { c.primary, c.blue, c.amber, c.gold, c.blue, c.blue }
  for i, color in ipairs(headings) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.08) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end

  return ret
end

return M
