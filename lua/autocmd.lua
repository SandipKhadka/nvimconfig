local autocmd = vim.api.nvim_create_autocmd
autocmd("LspAttach", {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function()
            vim.lsp.buf.definition()
        end, opts)
        vim.keymap.set("n", "K", function()
            vim.lsp.buf.hover()
        end, opts)
        vim.keymap.set("n", "<leader>ws", function()
            vim.lsp.buf.workleader_symbol()
        end, opts)
        vim.keymap.set("n", "<leader>vd", function()
            vim.diagnostic.open_float()
        end, opts)
        vim.keymap.set({ "v", "n" }, "<leader>ca", function()
            vim.lsp.buf.code_action()
        end, opts)
        vim.keymap.set("n", "<leader>gD", function()
            vim.lsp.buf.references()
        end, opts)
        vim.keymap.set("n", "<leader>rn", function()
            vim.lsp.buf.rename()
        end, opts)
        vim.keymap.set("i", "<C-g>", function()
            vim.lsp.buf.signature_help()
        end, opts)
        vim.keymap.set("n", "[d", function()
            vim.diagnostic.goto_next()
        end, opts)
        vim.keymap.set("n", "]d", function()
            vim.diagnostic.goto_prev()
        end, opts)
    end,
})
autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format { bufnr = args.buf }
    end,
})

-- auto save when buffer is changed
autocmd({ "BufLeave", "FocusLost" }, {
    pattern = "*",
    callback = function()
        if vim.bo.modified then
            require("conform").format { lsp_fallback = true }
            vim.cmd "silent! write"
        end
    end,
})
