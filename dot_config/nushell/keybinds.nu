$env.config.keybindings ++= [
    {
        name: dekete_one_word_backward
        modifier: alt
        keycode: backspace
        mode: [emacs, vi_normal, vi_insert]
        event: {
            edit: backspaceword
        }
    }
]
