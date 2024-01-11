function! EnsureVimhisExists()
    " Construct the full path to the .vimhis file in the home directory
    let vimhis_path = expand('~/Work/GIT/wim/.TEST.txt')
    
    " Check if the file exists
    if !filereadable(vimhis_path)
        " If the file doesn't exist, use the 'touch' command to create it
        call system('touch ' . shellescape(vimhis_path))
        echo "Created file: " . vimhis_path
    else
        " If the file exists, do nothing
        echo "File already exists: " . vimhis_path
    endif
endfunction

" Call the function to ensure .vimhis exists
call EnsureVimhisExists()
