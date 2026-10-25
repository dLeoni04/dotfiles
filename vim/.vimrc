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

" IMPOSTAZIONI SPECIFICHE PER IL MARKDOWN
" Rileva automaticamente i file con estensione .md come markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Configurazioni specifiche applicate solo quando modifichi file Markdown
autocmd FileType markdown setlocal 
    \ wrap                " Abilita il ritorno a capo visivo (le righe lunghe non escono dallo schermo)
    \ linebreak           " Va a capo spezzando le parole intere e non a metà (senza inserire caratteri di a capo reali)
    \ spell               " Attiva il controllo ortografico integrato
    \ spelllang=it,en     " Imposta il dizionario in italiano e inglese per il controllo ortografico
    \ conceallevel=2      " Nasconde o stilizza i simboli di formattazione superflui (es. asterischi del grassetto) se supportato dal tema
