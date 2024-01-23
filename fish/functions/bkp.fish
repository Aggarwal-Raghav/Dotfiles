function bkp --description 'create a backup of a file'
    cp "$argv[1]" "$argv[1].bkp"
end
