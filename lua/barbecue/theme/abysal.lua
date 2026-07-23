local c = require("abysal.colors").setup()

local M = {
  normal = { bg = c.none, fg = c.fg_secondary },

  ellipsis = { fg = c.fg_secondary },
  separator = { fg = c.fg_secondary },
  modified = { fg = c.warning },

  dirname = { fg = c.fg_secondary },
  basename = { fg = c.fg_secondary, bold = true },
  context = { fg = c.fg_secondary },

  context_file = { fg = c.fg_secondary },
  context_module = { fg = c.amber },
  context_namespace = { fg = c.amber },
  context_package = { fg = c.blue },
  context_class = { fg = c.primary },
  context_method = { fg = c.blue },
  context_property = { fg = c.green_anchor },
  context_field = { fg = c.green_anchor },
  context_constructor = { fg = c.blue },
  context_enum = { fg = c.primary },
  context_interface = { fg = c.primary },
  context_function = { fg = c.blue },
  context_variable = { fg = c.primary },
  context_constant = { fg = c.primary },
  context_string = { fg = c.green },
  context_number = { fg = c.primary },
  context_boolean = { fg = c.primary },
  context_array = { fg = c.primary },
  context_object = { fg = c.primary },
  context_key = { fg = c.blue },
  context_null = { fg = c.primary_anchor },
  context_enum_member = { fg = c.green_anchor },
  context_struct = { fg = c.primary },
  context_event = { fg = c.primary },
  context_operator = { fg = c.green_anchor },
  context_type_parameter = { fg = c.green_anchor },
}

return M
