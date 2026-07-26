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
end

return M
