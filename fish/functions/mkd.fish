function mkd --description 'cd and follow dir'
    mkdir -p "$argv[1]" && cd "$argv[1]"
end
