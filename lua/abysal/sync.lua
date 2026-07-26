local M = {}

---@type vim.SystemObj?
M._job = nil
---@type boolean?
M._available = nil

---@param line string
---@return "dark"|"light"|nil
function M.parse(line)
  local value = line:match("'([%w%-]+)'")
  if value == "prefer-dark" then
    return "dark"
  elseif value == "prefer-light" or value == "default" then
    return "light"
  end
  return nil
end

function M.available()
  return M._available
end

---@param opts? abysal.Config
function M.setup(opts)
  if M._job then
    return
  end

  if vim.fn.executable("gsettings") == 0 then
    M._available = false
    return
  end
  M._available = true

  local initial = vim.fn.system({ "gsettings", "get", "org.gnome.desktop.interface", "color-scheme" })
  local bg = M.parse(initial)
  if bg then
    vim.o.background = bg
  end

  M._job = vim.system({ "gsettings", "monitor", "org.gnome.desktop.interface", "color-scheme" }, {
    stdout = function(_, data)
      if not data then
        return
      end
      for line in data:gmatch("[^\r\n]+") do
        local parsed = M.parse(line)
        if parsed then
          vim.schedule(function()
            vim.o.background = parsed
          end)
        end
      end
    end,
  })

  vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
      if M._job then
        M._job:kill(15)
      end
    end,
  })
end

return M
