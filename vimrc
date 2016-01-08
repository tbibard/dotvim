" Annule la compatibilite avec l’ancetre Vi : totalement indispensable
set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" Vundle gère vundle, c'est obligatoire.
Plugin 'gmarik/Vundle.vim'
" List plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree' 
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'spf13/PIV'
Plugin 'vim-scripts/Align'
Plugin 'mattn/emmet-vim'
"Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'evidens/vim-twig'
Plugin 'MarcWeber/vim-addon-mw-utils' " snipmate
Plugin 'tomtom/tlib_vim' "snipmate
Plugin 'garbas/vim-snipmate'
call vundle#end() 

" -- Affichage
set title " Met a jour le titre de votre fenetre ou de votre terminal
set number " Affiche le numero des lignes
set ruler " Affiche la position actuelle du curseur
set wrap " Affiche les lignes trop longues sur plusieurs lignes
set scrolloff=3 " Affiche un minimum de 3 lignes autour du curseur (pour le scroll)

" -- Recherche
set ignorecase " Ignore la casse lors d’une recherche
set smartcase " Si une recherche contient une majuscule, re-active la sensibilite a la casse
set incsearch " Surligne les resultats de recherche pendant la saisie
set hlsearch " Surligne les resultats de recherche

"-- Beep
set visualbell " Empeche Vim de beeper
set noerrorbells " Empeche Vim de beeper

" Active le comportement ’habituel’ de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l’ouverture d’autres fichiers
set hidden

" Active la coloration syntaxique
syntax enable
" Active les comportements specifiques aux types de fichiers comme la syntaxe et l’indentation
"filetype on
filetype plugin indent on

" Whitespace stuff
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" " Longueur maximale de ligne
set textwidth=80
set cc=+1

let mapleader = ","
" color/theme
set background=light
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized

" NERDTree
map <C-e> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

" Airline config
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
"let g:airline_theme='molokai'

" TagBar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus=1 " set focus on tagbar when toggle
