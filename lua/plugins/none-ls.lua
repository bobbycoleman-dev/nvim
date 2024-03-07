-- return {
-- 	"nvimtools/none-ls.nvim",
-- 	config = function()
-- 		local null_ls = require("null-ls")
-- 		null_ls.setup({
-- 			sources = {
-- 				null_ls.builtins.formatting.stylua,
-- 				null_ls.builtins.formatting.prettier,
-- 				null_ls.builtins.diagnostics.erb_lint,
-- 				-- null_ls.builtins.diagnostics.eslint_d,
-- 				null_ls.builtins.diagnostics.rubocop,
-- 				null_ls.builtins.formatting.rubocop,
-- 			},
-- 		})

-- 		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
-- 	end,
-- }
return { -- Autoformat
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform can also run multiple formatters sequentially
			python = { "isort", "black" },
			--
			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			javascript = { { "prettierd", "prettier" } },
		},
	},
}
