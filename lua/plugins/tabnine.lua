return {
    {
        "codota/tabnine-nvim",
        build = "./dl_binaries.sh",
        config = function()
            require('tabnine').setup({
                disable_auto_comment=true,
                accept_keymap="<s-p>",
                dismiss_keymap = "<C-]>",
                -- disable_suggestion=true,
                debounce_ms = 300,
                suggestion_color = {gui = "#a49188", cterm = 0},
              })
        end,
    }
}
