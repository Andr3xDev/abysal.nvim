local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
--- @return table<string, string>
local function generate_defs(colors)
  local defs = {}

  local keys = vim.tbl_keys(colors)
  table.sort(keys)
  for _, key in ipairs(keys) do
    local value = colors[key]
    -- Skip keys that start with underscore (metadata) and "none"
    if not key:match("^_") and key ~= "none" then
      if type(value) == "string" then
        defs[key] = value
      elseif type(value) == "table" then
        -- Handle nested tables like git, diff, terminal
        for subkey, subvalue in pairs(value) do
          if type(subvalue) == "string" then
            defs[key .. "_" .. subkey] = subvalue
          end
        end
      end
    end
  end

  return defs
end

--- @param defs table<string, string>
--- @param indent number Number of spaces to indent
--- @return string
local function format_defs_json(defs, indent)
  local defs_lines = {}

  -- Sort keys for consistent output
  local sorted_keys = {}
  for k in pairs(defs) do
    table.insert(sorted_keys, k)
  end
  table.sort(sorted_keys)

  for _, k in ipairs(sorted_keys) do
    table.insert(defs_lines, string.format('%s"%s": "%s"', string.rep(" ", indent), k, defs[k]))
  end

  return table.concat(defs_lines, ",\n")
end

--- @param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)

  local defs = generate_defs(colors)
  colors.opencode_defs = format_defs_json(defs, 4)

  local opencode = util.template(
    [[{
  "$schema": "https://opencode.ai/theme.json",
  "defs": {
${opencode_defs}
  },
  "theme": {
    "primary": {
      "dark": "blue",
      "light": "blue"
    },
    "secondary": {
      "dark": "blue",
      "light": "blue"
    },
    "accent": {
      "dark": "primary",
      "light": "primary"
    },
    "error": {
      "dark": "red",
      "light": "red"
    },
    "warning": {
      "dark": "amber",
      "light": "amber"
    },
    "success": {
      "dark": "green",
      "light": "green"
    },
    "info": {
      "dark": "blue",
      "light": "blue"
    },
    "text": {
      "dark": "fg",
      "light": "fg"
    },
    "textMuted": {
      "dark": "fg_secondary",
      "light": "fg_secondary"
    },
    "background": {
      "dark": "bg",
      "light": "bg"
    },
    "backgroundPanel": {
      "dark": "bg_elevated",
      "light": "bg_elevated"
    },
    "backgroundElement": {
      "dark": "bg_highlight",
      "light": "bg_highlight"
    },
    "border": {
      "dark": "black",
      "light": "black"
    },
    "borderActive": {
      "dark": "border_highlight",
      "light": "border_highlight"
    },
    "borderSubtle": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "diffAdded": {
      "dark": "green_anchor",
      "light": "green_anchor"
    },
    "diffRemoved": {
      "dark": "red",
      "light": "red"
    },
    "diffContext": {
      "dark": "fg_secondary",
      "light": "fg_secondary"
    },
    "diffHunkHeader": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "diffHighlightAdded": {
      "dark": "git_add",
      "light": "git_add"
    },
    "diffHighlightRemoved": {
      "dark": "git_delete",
      "light": "git_delete"
    },
    "diffAddedBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "diffContextBg": {
      "dark": "bg_highlight",
      "light": "bg_highlight"
    },
    "diffLineNumber": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "diffAddedLineNumberBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedLineNumberBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "markdownText": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownHeading": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownLink": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownLinkText": {
      "dark": "primary_anchor",
      "light": "primary_anchor"
    },
    "markdownCode": {
      "dark": "green",
      "light": "green"
    },
    "markdownBlockQuote": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "markdownEmph": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownStrong": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownHorizontalRule": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "markdownListItem": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "markdownListEnumeration": {
      "dark": "primary",
      "light": "primary"
    },
    "markdownImage": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownImageText": {
      "dark": "primary_anchor",
      "light": "primary_anchor"
    },
    "markdownCodeBlock": {
      "dark": "fg",
      "light": "fg"
    },
    "syntaxComment": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "syntaxKeyword": {
      "dark": "blue",
      "light": "blue"
    },
    "syntaxFunction": {
      "dark": "blue",
      "light": "blue"
    },
    "syntaxVariable": {
      "dark": "fg",
      "light": "fg"
    },
    "syntaxString": {
      "dark": "green",
      "light": "green"
    },
    "syntaxNumber": {
      "dark": "primary",
      "light": "primary"
    },
    "syntaxType": {
      "dark": "primary_anchor",
      "light": "primary_anchor"
    },
    "syntaxOperator": {
      "dark": "fg_muted",
      "light": "fg_muted"
    },
    "syntaxPunctuation": {
      "dark": "fg_secondary",
      "light": "fg_secondary"
    }
  }
}]],
    colors
  )

  return opencode
end

return M
