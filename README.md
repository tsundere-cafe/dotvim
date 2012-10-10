dotvim
======

My vim dotfiles plus some pry stuff.

Installation
------------

Install ruby/bundler if they aren't already installed.

Install tmux if you haven't already.

Then copy and paste:

    git clone git://github.com/plus-my/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/pryrc ~/.pryrc
    cd ~/.vim
    bundle

In vimrc
--------

arrow keys disabled (sorry)

gh: home
ge: end
gw: same as ctrl-w w, go to next buffer in splitscreen

tab: autocomplete word

bb
- with selection: send selection to tmux
- on block opening or closing line: send block to tmux
- on plain line: send line to tmux

bd
-  same as bb: but deletes selection/block/line after sending

In pryrc
--------

Hash.toy and Array.toy: see https://gist.github.com/807492
