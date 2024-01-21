if vim.fn.has('nvim-0.8') == 0 then
    error('Need Neovim 0.8+ in order to use this config')
end

for _, cmd in ipairs({"git"}) do
    local name = type(cmd) == "string" and cmd or vim.inspect(cmd)
    local commands = type(cmd) == "string" and {cmd} or cmd
    ---@cast commands string[]
    local found = false

    for _, c in ipairs(commands) do
        if vim.fn.executable(c) == 1 then
            name = c
            found = true
        end
    end

    if not found then
        error(("`%s` is not installed"):format(name))
    end
end

-- Load main config
require("user.config")
vim.cmd([[execute "source " . stdpath('config') . "/lua/user/grep-operator.lua"]])
vim.cmd([[execute "source " . stdpath('config') . "/lua/user/tempt.lua"]])
print("init is source")
