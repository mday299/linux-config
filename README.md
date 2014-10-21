Linux Config
===

Installation
---

place this in ~/.bashrc

    if [ -f <dir>/.bashrc ]; then
        source <dir>/.bashrc
    fi

    PATH=$PATH:~/bin

place this in ~/.vimrc


    try
        source <dir>/.vimrc
    catch
    endtry

place this in ~/.inputrc 

    #get vi mode for all binaries called from bash 
    #http://acg.github.io/2011/05/17/put-everything-in-vi-mode.html
    set keymap vi 
    set editing-mode vi
    
    $if mode=vi
        set keymap vi-insert 
        "jk": vi-movement-mode
    $endif 
    
to get various plugins for vim

    cd into some place where you want your repos

    DIR=$(pwd)
    mkdir -p ~/.vim/autoload
    mkdir ~/.vim/bundle

    Pathogen:

        git clone https://github.com/tpope/vim-pathogen.git
        ln -s $DIR/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

    Nerdtree:       

        git clone https://github.com/scrooloose/nerdtree
        git clone https://github.com/jistr/vim-nerdtree-tabs
        ln -s $DIR/nerdtree ~/.vim/bundle/
        ln -s $DIR/vim-nerdtree-tabs ~/.vim/bundle/
    
    neocomplcache: 
    
        git clone https://github.com/Shougo/neocomplcache.vim
        ln -s $DIR/neocomplcache.vim ~/.vim/bundle/
    
    togglelist:     

        git clone https://github.com/milkypostman/vim-togglelist
        ln -s $DIR/vim-togglelist ~/.vim/bundle/
    
    vim-pdb:

        git clone https://github.com/esquires/vim-pdb
        ln -s $DIR/vim-pdb ~/.vim/bundle/

    tabcity:
        git clone https://github.com/esquires/tabcity 
        ln -s $DIR/tabcity ~/.vim/bundle 

    vim-map-medley:
        git clone https://github.com/esquires/vim-map-medley
        ln -s $DIR/vim-map-medley ~/.vim/bundle/

    vim-matlab-fold:

        git clone https://github.com/esquires/vim-matlab-fold
        ln -s $DIR/vim-matlab-fold ~/.vim/bundle/

    colors:         
    
        mkdir ~/.vim/colors
        wget -P ~/.vim/colors -O wombat256.vim http://www.vim.org/scripts/download_script.php?src_id=13397
