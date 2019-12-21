let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_aggregate_errors = 1

let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeMapActivateNode='v'

let g:typescript_indent_disable = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('ts', 'Blue', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Blue', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('py', 'Red', 'none', '#ff00ff', '#151515')

" fzf vim wrapper
set rtp+=/usr/local/opt/fzf

" Vim-session settings
set sessionoptions-=help
set sessionoptions-=options
let g:session_default_name = 'last'
let g:session_default_overwrite = 1
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 60
let g:session_default_to_last = 1
let g:session_command_aliases = 1

" Vim better whitespace
let g:better_white_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitelines_at_eof=1

" Vim autopep8
let g:autopep8_max_line_length=79

" Vim-prettier
let g:prettier#exec_cmd_path="~/.nvm/versions/node/v10.15.2/bin/prettier"
