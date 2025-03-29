imap jk <Esc>

""""""""""""""""""""""
" Leader
""""""""""""""""""""""
" let mapleader=,
" can't set leaders in Obsidian vim, so the key just has to be used consistently.
" However, it needs to be unmapped, to not trigger default behavior: https://github.com/esm7/obsidian-vimrc-support#some-help-with-binding-space-chords-doom-and-spacemacs-fans
unmap ,

""""""""""""""""""""""
" Clipboard
""""""""""""""""""""""
" yank to system clipboard
set clipboard=unnamed

" Y consistent with D and C to the end of line
nnoremap Y y$

" don't pollute the register (HACK since we can't map to `"_x` or `"_C`)
nnoremap C "_c$
nnoremap x "_dl
" nnoremap c "_c " BUG not working with vimrc plugin

""""""""""""""""""""""
" Navigation
""""""""""""""""""""""

" navigate visual lines rather than logical ones
nnoremap j gj
nnoremap k gk
nnoremap I g0i
nnoremap A g$a

" HJKL behaves like hjkl, but bigger distance
noremap H g0
noremap L g$
nnoremap J 6gj
nnoremap K 6gk
vnoremap J 6j
vnoremap K 6k

" dj = delete 2 lines, dJ = delete 3 lines
onoremap J 2j

" Jumps
nnoremap <C-h> <C-o>
nnoremap <C-l> <C-i>

" :bnext/bprev
exmap goBack obcommand app:go-back
exmap goForward obcommand app:go-forward
nnoremap <BS> :goBack
nnoremap <S-BS> :goForward

" sentence navigation
noremap [ (
noremap ] )

" [z]pelling [l]ist (emulates `z=`)
exmap contextMenu obcommand editor:context-menu
nnoremap zl :contextMenu

" next diagnostic
exmap nextSuggestion obcommand obsidian-languagetool-plugin:ltjump-to-next-suggestion
nnoremap ge :nextSuggestion
vnoremap ge :nextSuggestion

" INFO doesn't work in reading mode: https://github.com/timhor/obsidian-editor-shortcuts/issues/20
exmap nextHeading obcommand obsidian-editor-shortcuts:goToNextHeading
exmap prevHeading obcommand obsidian-editor-shortcuts:goToPrevHeading
nnoremap <C-j> :nextHeading
nnoremap <C-k> :prevHeading

" INFO doesn't work in visual mode
exmap lineUp obcommand editor:swap-line-up
exmap lineDown obcommand editor:swap-line-down
nnoremap <Up> :lineUp
nnoremap <Down> :lineDown
nnoremap <Right> dlp
nnoremap <Left> dlhhp

" [m]atch parenthesis
nnoremap m %

" [g]oto [s]ymbol via "Another Quick Switcher" Plugin
exmap gotoHeading obcommand obsidian-another-quick-switcher:header-floating-search-in-file
nnoremap gh :gotoHeading

" [g]oto [w]riting chapters
exmap gotoScene obcommand longform:longform-jump-to-scene
nnoremap gw :gotoScene

" [g]oto definition / link (shukuchi makes it forward-seeking)
exmap followNextLink obcommand shukuchi:open-link
nnoremap gx :followNextLink
nnoremap ga :followNextLink
nnoremap gd :followNextLink

" [g]oto [o]pen file (= Quick Switcher)
exmap quickSwitcher obcommand obsidian-another-quick-switcher:search-command_recent-search
nnoremap go :quickSwitcher
nnoremap gr :quickSwitcher

" go to last change (HACK, only works to jump to the last location)
nnoremap gc u<C-r>

" increment quicker
nnoremap + <C-a>

""""""""""""""""""""""
" Search
""""""""""""""""""""""
" Another Quick Switcher ripgrep-search
" somewhat close to Telescope's livegrep
exmap liveGrep obcommand obsidian-another-quick-switcher:grep
nnoremap gl :liveGrep

" Obsidian builtin Search & replace
exmap searchReplace obcommand editor:open-search-replace
nnoremap ,ff :searchReplace


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" window controls
exmap wq obcommand workspace:close
exmap q obcommand workspace:close

exmap focusRight obcommand editor:focus-right
nmap <C-w>l :focusRight

exmap focusLeft obcommand editor:focus-left
nmap <C-w>h :focusLeft

exmap focusTop obcommand editor:focus-top
nmap <C-w>k :focusTop

exmap focusBottom obcommand editor:focus-bottom
nmap <C-w>j :focusBottom

exmap splitVertical obcommand workspace:split-vertical
nmap <C-w>v :splitVertical

exmap splitHorizontal obcommand workspace:split-horizontal
nmap <C-w>s :splitHorizontal

" Surround
exmap surround_wiki surround [[ ]]
exmap surround_dollar surround $ $ 
exmap surround_underscore surround _ _
exmap surround_equal surround == ==
exmap surround_anki_basic surround <!--START-->Basic <!--END-->
exmap surround_anki_cloze surround <!--START-->Cloze <!--END-->

nunmap S
vunmap S
map S[ :surround_wiki<CR>
map S$ :surround_dollar<CR>
map S_ :surround_underscore<CR>
map S= :surround_equal<CR>
map Sb :surround_anki_basic<CR>
map Sc :surround_anki_cloze<CR>

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold<CR>
nmap zc :togglefold<CR>
nmap za :togglefold<CR>

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall<CR>

exmap foldall obcommand editor:fold-all
nmap zM :foldall<CR>

" Emulate Tab Switching https://vimhelp.org/tabpage.txt.html#gt
" requires Cycle Through Panes Plugins https://obsidian.md/plugins?id=cycle-through-panes
exmap tabnext obcommand cycle-through-panes:cycle-through-panes
nmap gt :nextTab<CR>
exmap tabprev obcommand cycle-through-panes:cycle-through-panes-reverse
nmap gT :prevTab<CR>

" jump to link
exmap jumpToLink obcommand mrj-jump-to-link:activate-lightspeed-jump
nmap gs :jumpToLink<CR>
