return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		-- Map filetypes to specific formatters
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" }, -- Runs sequentially
			javascript = { "prettierd", "prettier", stop_after_first = true }, -- Try prettierd first
		},
		-- Enable format-on-save
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
