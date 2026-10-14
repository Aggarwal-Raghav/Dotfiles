# Custom completions for git aliases
# Placed in conf.d to preserve built-in git completions in Fish

# git swt: complete git tags
complete -c git -n "__fish_seen_subcommand_from swt" -f -a "(git tag 2>/dev/null)" -d "Tag"

# git at / git tf: complete git tags
complete -c git -n "__fish_seen_subcommand_from at tf" -f -a "(git tag 2>/dev/null)" -d "Tag"

# git ft: complete git tags
complete -c git -n "__fish_seen_subcommand_from ft" -f -a "(git tag 2>/dev/null)" -d "Tag"
