" Mostra i numeri di riga
set number

" Attiva l'indentazione in base al tipo di file
filetype plugin indent on

" Converte il tasto TAB in spazi
set expandtab

" Imposta la larghezza del TAB a 4 spazi
set tabstop=4

" Imposta il numero di spazi utilizzati per l'indentazione automatica
set shiftwidth=4

" Attiva la colorazione della sintassi
syntax on

" Permette la navigazione nelle righe visuali nella modalità normale
nnoremap j gj
nnoremap k gk

" VimWiki Roba
set nocompatible
filetype plugin on

" CONFIGURAZIONI PLUGIN

" Configurazioni VimWiki
let g:vimwiki_list = [{'syntax': 'markdown', 
                      \'ext': 'md', 
                      \'path': '/home/davide/Nextcloud/Note/'}] " Questa linea potrebbe variare da sistema a sistema

" Configurazione emmet-vim

" Cambia il tasto leader per espandere gli snippet emmet
let g:user_emmet_leader_key=','

" Configurazione tagalong

" The `<c-u>` removes the current visual mode, so a function can be called
xnoremap <buffer> p :<c-u>call <SID>Paste()<cr>

" The <SID> above is the same as the s: here
function! s:Paste()
  call tagalong#Trigger()

  " gv reselects the previously-selected area, and then we just paste
  normal! gvp

  call tagalong#Apply()
endfunction

let g:tagalong_filetypes = ['html']

let g:tagalong_verbose = 1
inoremap <silent> <c-c> <c-c>:call tagalong#Apply()<cr>
