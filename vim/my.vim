let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <C-V> :set pastemui+mv'uV'v=:set nopaste
imap <F7> :NERDTreeToggle
imap <C-Q> 
cnoremap <C-K> 
cnoremap <C-E> <End>
cnoremap <C-A> <Home>
imap <M-l> :exec "normal f" . leavechara
imap <M-0> 0i
imap <M-$> $a
map  h
map <NL> j
map  k
map <NL>:q:botright cw 10
map  l
map  :sb
nmap d :cs find d =expand("<cword>")
nmap i :cs find i =expand("<cfile>")
nmap f :cs find f =expand("<cfile>")
nmap e :cs find e =expand("<cword>")
nmap t :cs find t =expand("<cword>")
nmap c :cs find c =expand("<cword>")
nmap g :cs find g =expand("<cword>")
nmap s :cs find s =expand("<cword>")
map   /
vnoremap <silent> # :call VisualSearch('b')
vnoremap $w `>a"`<i"
vnoremap $q `>a'`<i'
vnoremap $$ `>a"`<i"
vnoremap $3 `>a}`<i{
vnoremap $2 `>a]`<i[
vnoremap $1 `>a)`<i(
vnoremap <silent> * :call VisualSearch('f')
noremap ,m mmHmt:%s///ge'tzt'm
map <silent> ,k :tabn
map <silent> ,j :tabp
map ,c :botright cw 10
map ,p :cp
map ,n :cn
map <silent> , :noh
map ,y :YRShow
map ,s? z=
map ,sa zg
map ,sp [s
map ,sn ]s
map ,t4 :set shiftwidth=4
map ,t2 :set shiftwidth=2
map ,q :e ~/buffer
map ,cd :cd %:p:h
map ,tm :tabmove
map ,tc :tabclose
map ,te :tabf 
map ,tn :tabnew  
map ,bd :Bclose
nmap ,fu :se ff=unix
nmap ,fd :se ff=dos
map ,$ :syntax sync fromstart
map ,4 :set ft=javascript
map ,3 :set syntax=python
map ,2 :set syntax=xhtml
map ,1 :set syntax=cheetah
map <silent> ,tl :TlistToggle
map ,e :e! ~/vim_local/vimrc
map ,s :source ~/vim_local/vimrc
nmap ,f :find
nmap ,w :w!
map 0 ^
imap ° 0i
imap ¤ $a
imap ì :exec "normal f" . leavechara
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vmap <F7> :call Python_Eval_VSplit()
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nmap <C-Bslash>d :cs find d =expand("<cword>")
nmap <C-Bslash>i :cs find i =expand("<cfile>")
nmap <C-Bslash>f :cs find f =expand("<cfile>")
nmap <C-Bslash>e :cs find e =expand("<cword>")
nmap <C-Bslash>t :cs find t =expand("<cword>")
nmap <C-Bslash>c :cs find c =expand("<cword>")
nmap <C-Bslash>g :cs find g =expand("<cword>")
nmap <C-Bslash>s :cs find s =expand("<cword>")
nmap <F7> :NERDTreeToggle
omap <F7> :NERDTreeToggle
map <C-L><C-J>:q:botright cw 10
map <F8> :new:read !svn diff:set syntax=diff buftype=nofilegg
map <F9> ggVGg?
map <C-Q> :sb
vmap <M-k> :m'<-2`>my`<mzgv`yo`z
vmap <M-j> :m'>+`<my`>mzgv`yo`z
nmap <M-k> mz:m-2`z
nmap <M-j> mz:m+`z
map <C-L> l
map <C-H> h
map <C-K> k
map <C-J> j
map <C-Space> ?
noremap <F4> :tabf ~/.vim/newfile
noremap <F3> :so ~/.vim/my.vim
cnoremap  <Home>
cnoremap  <End>
cnoremap  
imap  
inoremap  :set pastemui+mv'uV'v=:set nopaste
cnoremap $td tabnew ~/Desktop/
cnoremap $th tabnew ~/
cnoremap $tc eCurrentFileDir("tabnew")
cnoremap $c e eCurrentFileDir("e")
cnoremap $q eDeleteTillSlash()
cnoremap $j e ./
cnoremap $d e ~/Desktop/
cnoremap $h e ~/
inoremap $w "":let leavechar='"'i
inoremap $q '':let leavechar="'"i
inoremap $3 {}:let leavechar="}"i
inoremap $4 {o}:let leavechar="}"O
inoremap $2 []:let leavechar="]"i
inoremap $1 ():let leavechar=")"i
imap <d-l> :exec "normal f" . leavechara
imap <D-0> 0i
imap <D-$> $a
vmap ë :m'<-2`>my`<mzgv`yo`z
vmap ê :m'>+`<my`>mzgv`yo`z
nmap ë mz:m-2`z
nmap ê mz:m+`z
iabbr xname Amir Salihefendic
iabbr xdate =strftime("%d/%m/%y %H:%M:%S")
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set cindent
set cmdheight=2
set completeopt=menu
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopeverbose
set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set grepprg=grep\ -nH\ $*
set helplang=en
set hidden
set history=400
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
set matchtime=2
set pastetoggle=<F3>
set ruler
set scrolloff=7
set shiftwidth=4
set showmatch
set showtabline=2
set smartindent
set smarttab
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set switchbuf=usetab
set textwidth=79
set viminfo='10,\"100,:20,%,n~/.viminfo
set whichwrap=b,s,<,>,h,l
set wildignore=*.pyc
set wildmenu
set nowritebackup
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/work/AI/hume/hume-api-examples/evi-python-api-example/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd main.py
edit main.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
map <buffer> ,  :w!:!python %
inoremap <buffer> $d """"""O
inoremap <buffer> $p print
inoremap <buffer> $i import
inoremap <buffer> $c ### #kla
inoremap <buffer> $s self
inoremap <buffer> $r return
inoreabbr <buffer> cifelse =IMAP_PutTextWithMovement("if <++>:\n<++>\nelse:\n<++>")
inoreabbr <buffer> cif =IMAP_PutTextWithMovement("if <++>:\n<++>")
inoreabbr <buffer> cfor =IMAP_PutTextWithMovement("for <++> in <++>:\n<++>")
inoreabbr <buffer> cclass =IMAP_PutTextWithMovement("class <++>:\n<++>")
inoreabbr <buffer> cfun =IMAP_PutTextWithMovement("def <++>(<++>):\n<++>\nreturn <++>")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=^\\s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=GetPythonFold(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=python3\ -m\ pydoc
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 90 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 90
normal! 025|
tabnext 1
badd +0 main.py
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
