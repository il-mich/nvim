-- start lsp grammar checker but disable spellchecker
require('lspconfig').ltex.setup(
	require('coq').lsp_ensure_capabilities(
		{
			settings = {
				ltex = {
					disabledRules = {
						["en"]    = { "MORFOLOGIK_RULE_EN"    },
						["en-GB"] = { "MORFOLOGIK_RULE_EN_GB" },
						["en-US"] = { "MORFOLOGIK_RULE_EN_US" },
						["it"]    = { "MORFOLOGIK_RULE_IT_IT" },
					},
				},
			},
		}
	)
)

-- start nvim spellchecker
vim.wo.spell = true

-- 80 column hint
vim.wo.colorcolumn = vim.wo.colorcolumn .. '80'

-- set indentation
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true
