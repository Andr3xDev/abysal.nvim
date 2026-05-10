local Util = require("abysal.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type abysal.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    -- General
    RenderMarkdownBullet       = { fg = c.cyan },                         -- list bullets (* -)
    RenderMarkdownDash         = { fg = c.orange },                       -- horizontal rule (---)
    RenderMarkdownSign         = { fg = c.fg_dark },                      -- sign column indicator
    RenderMarkdownIndent       = { fg = c.bg_highlight },                 -- indentation guides
    RenderMath                 = { fg = c.purple },                       -- math blocks
    RenderMarkdownHtmlComment  = { fg = c.comment, italic = true },       -- HTML comments

    -- Code blocks
    RenderMarkdownCode         = { bg = c.bg_dark },                      -- fenced code block background
    RenderMarkdownCodeInfo     = { fg = c.blue, bg = c.bg_dark, italic = true }, -- code block language info
    RenderMarkdownCodeBorder   = { fg = c.fg_dark, bg = c.bg_dark },      -- code block border line
    RenderMarkdownCodeFallback = { fg = c.fg, bg = c.bg_dark },           -- code block fallback
    RenderMarkdownCodeInline   = { bg = c.terminal_black, fg = c.fg },    -- inline code span

    -- Tables
    RenderMarkdownTableHead    = { fg = c.orange, bold = true },          -- table header row
    RenderMarkdownTableRow     = { fg = c.cyan },                         -- table body rows
    RenderMarkdownTableFill    = { fg = c.fg_dark },                      -- table filler cells

    -- Links
    RenderMarkdownLink         = { fg = c.blue, underline = true },       -- link text

    -- Checkboxes (visible colors so they don't blend into bg)
    RenderMarkdownUnchecked    = { fg = c.orange },                       -- [ ] unchecked (visible on bg)
    RenderMarkdownChecked      = { fg = c.cyan },                         -- [x] checked
    RenderMarkdownTodo         = { fg = c.yellow },                       -- [-] pending

    -- Blockquotes & callouts (soft bg so they look like colored blocks)
    RenderMarkdownQuote        = { fg = c.cyan, italic = true, bg = Util.blend_bg(c.cyan, 0.08) },

    -- Callout types (fg + subtle bg for aesthetic block labels)
    RenderMarkdownSuccess      = { fg = c.green, bg = Util.blend_bg(c.green, 0.10) },  -- TIP, SUCCESS, CHECK, DONE
    RenderMarkdownInfo         = { fg = c.blue, bg = Util.blend_bg(c.blue, 0.10) },    -- NOTE, INFO, TODO, ABSTRACT
    RenderMarkdownHint         = { fg = c.cyan, bg = Util.blend_bg(c.cyan, 0.10) },    -- IMPORTANT, EXAMPLE
    RenderMarkdownWarn         = { fg = c.orange, bg = Util.blend_bg(c.orange, 0.10) }, -- WARNING, QUESTION, HELP, ATTENTION
    RenderMarkdownError        = { fg = c.red, bg = Util.blend_bg(c.red, 0.10) },      -- ERROR, DANGER, FAILURE, BUG
  }

  -- Headings: custom order (H1 orange → H2 cyan → H3 yellow → H4 red → H5 blue → H6 purple)
  local headings = { c.orange, c.cyan, c.yellow, c.red, c.blue, c.purple }
  for i, color in ipairs(headings) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.10) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end

  return ret
end

return M
