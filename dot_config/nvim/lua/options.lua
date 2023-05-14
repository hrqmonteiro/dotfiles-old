local cmd, g, o = vim.cmd, vim.g, vim.o

local function apply_globals(opts)
	for k, v in pairs(opts) do
		g[k] = v
	end
end

local function apply_options(opts)
	for k, v in pairs(opts) do
		if v == true then
			cmd("set " ..k)
		elseif v == false then
			cmd(string.format("set no%s", k))
		else
			cmd(string.format("set %s=%s", k, v))
		end
	end
end

local globals = {
  gruvbox_material_background = "hard"
}

apply_globals(globals)

local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 1,
	conceallevel = 1,
	cursorline = true,
	expandtab = true,
	incsearch = true,
	hidden = true,
	laststatus = 3,
	mouse = "nv",
	number = true,
	relativenumber = true,
	shiftwidth = 2,
	showmode = true,
  signcolumn = "yes",
	splitbelow = true,
	splitright = true,
	swapfile = false,
  syntax = "on",
	tabstop = 2,
	termguicolors = true,
	t_Co = "256",
  updatetime = 250,
	wildmenu = true
}

apply_options(options)
