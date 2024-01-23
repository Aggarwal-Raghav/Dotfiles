function weather --description 'get weather info'
    curl -s "https://wttr.in/$argv[1]"
end
