local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup_servers({
    'tsserver',
    'eslint',
    'lua_ls',
    'rust_analyzer',
    'intelephense',
})
lsp.ensure_installed({
	'tsserver',
	'eslint',
	'lua_ls',
	'rust_analyzer',
    'intelephense',
    'html'
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-space>"] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = {}
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client,bufnr)

end)

lsp.setup()

vim.api.nvim_create_autocmd("FileType", {
    pattern = "twig",
    callback = function ()

        vim.bo.filetype = "html"

    end
})
