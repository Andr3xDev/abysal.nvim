local Config = require("abysal.config")
local Init = require("abysal")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
  Init.styles = {}
end)

it("did proper init", function()
  assert.same({}, Init.styles)
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

describe("loading respects vim.o.background", function()
  it("= dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("abysal")
    assert.same("dark", vim.o.background)
    assert.same("abysal-obsidian", vim.g.colors_name)
  end)

  it("= light", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("abysal")
    assert.same("light", vim.o.background)
    assert.same("abysal-marble", vim.g.colors_name)
  end)

  it("= dark with obsidian", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("abysal-obsidian")
    assert.same("dark", vim.o.background)
    assert.same("abysal-obsidian", vim.g.colors_name)
  end)

  it("= dark with marble", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("abysal-marble")
    assert.same("light", vim.o.background)
    assert.same("abysal-marble", vim.g.colors_name)
  end)

  it("= light with obsidian", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("abysal-obsidian")
    assert.same("dark", vim.o.background)
    assert.same("abysal-obsidian", vim.g.colors_name)
  end)

  it("= light with marble", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("abysal-marble")
    assert.same("light", vim.o.background)
    assert.same("abysal-marble", vim.g.colors_name)
  end)

  it(" and switches to light", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("abysal-obsidian")
    vim.o.background = "light"
    assert.same("light", vim.o.background)
    assert.same("abysal-marble", vim.g.colors_name)
  end)

  it(" and switches to dark", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("abysal")
    vim.o.background = "dark"
    assert.same("dark", vim.o.background)
    assert.same("abysal-obsidian", vim.g.colors_name)
  end)

  it(" and remembers dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("abysal-obsidian")
    vim.o.background = "light"
    vim.o.background = "dark"
    assert.same("dark", vim.o.background)
    assert.same("abysal-obsidian", vim.g.colors_name)
  end)
end)
