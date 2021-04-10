local vim = vim
local api = vim.api

local keymaps = {}
keymaps.register = function (scope, mappings)
    local options = {noremap = true, silent = true}

    for key, value in pairs(mappings) do
        api.nvim_set_keymap(scope, key, value, options)
    end
end

keymaps.register_bufnr = function (bufnr, scope, mappings)
    local options = {noremap = true, silent = true}

    for key, value in pairs(mappings) do
        api.nvim_buf_set_keymap(bufnr, scope, key, value, options)
    end
end

return keymaps
