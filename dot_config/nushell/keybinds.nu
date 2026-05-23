$env.config.keybindings ++= [
    {
        name: dekete_one_word_backward
        modifier: alt
        keycode: backspace
        mode: [emacs, vi_normal, vi_insert]
        event: {
            edit: backspaceword
        }
    },
    {
      name: reload_config
      modifier: none
      keycode: f5
      mode: [emacs, vi_normal, vi_insert]
      event: {
          send: executehostcommand,
          cmd: $"source '($nu.env-path)';source '($nu.config-path)'"
      }
    }
]
