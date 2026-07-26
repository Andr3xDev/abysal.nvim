local M = {}

M.minimum_neovim_version = "0.10.0"

function M.check()
  vim.health.start("abysal.nvim")

  if vim.fn.has("nvim-" .. M.minimum_neovim_version) == 1 then
    vim.health.ok("Neovim >= " .. M.minimum_neovim_version)
  else
    vim.health.error("Neovim >= " .. M.minimum_neovim_version .. " is required")
  end

  if vim.o.termguicolors then
    vim.health.ok("termguicolors is enabled")
  else
    vim.health.warn("termguicolors is disabled", "Set vim.o.termguicolors = true for accurate colors")
  end

  if package.loaded.lazy then
    vim.health.ok("lazy.nvim detected, plugin groups are auto-configured")
  else
    vim.health.ok("lazy.nvim not detected, enable plugin groups manually via opts.plugins.<name> = true")
  end

  if require("abysal.config").options.gnome_theme_sync then
    if require("abysal.sync").available() then
      vim.health.ok("GNOME theme sync active")
    else
      vim.health.warn("gsettings not found on $PATH", "GNOME theme sync disabled for this session")
    end
  end
end

return M
