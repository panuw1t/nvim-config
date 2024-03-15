local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
    return
end

local dashboard = require('alpha.themes.dashboard')
dashboard.section.header.val = {
    '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
    '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
    '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
    '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
    '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
    '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
}

dashboard.section.buttons.val = {
    dashboard.button('e', '  New file', '<cmd>ene<CR>'),
    dashboard.button('SPC f f', '󰈞  Find file'),
    dashboard.button('c', '  Configuration', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),
    dashboard.button('u', '  Update plugins', '<cmd>Lazy sync<CR>'),
    dashboard.button('q', '󰅚  Quit', '<cmd>qa<CR>'),
}

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
