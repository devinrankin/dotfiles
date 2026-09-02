local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
    desc = "Enable treesitter highlighting and indentation for C/C++ files",
    pattern = { "c", "cpp" },
    callback = function(args)
        vim.treesitter.start(args.buf)
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

autocmd("BufReadPost", {
    desc = "Jump to the last cursor position when opening a file",
    callback = function(args)
        local valid_line = vim.fn.line([['"]]) >= 1 and vim.fn.line([['"]]) < vim.fn.line("$")
        local is_commit = vim.b[args.buf].filetype == "commit"

        if valid_line and not is_commit then
            vim.cmd([[normal! g`"]])
        end
    end,
})
