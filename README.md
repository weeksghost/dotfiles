dotfiles
=======

Before cloning the repo, in order to use these features fully you should do the following:

    brew install macvim
    brew install bash-completion
    brew install bash-git-prompt
    cd /usr/local/bin
    sudo ln -s /usr/local/Cellar/macvim/<MVIM_VERSION>/bin/mvim vim
    
##Make sure to `cd` to the root of your user account

First clone this repo to the root of your user account:

    /Users/<name> --> MAC
    /home/<name> --> Linux(Ubuntu)

Next link the core files:

If working on a mac:

    ./dotfiles/mac-conf.sh

If Ubuntu:

    ./dotfiles/ubuntu-conf.sh

Next get Vim pathogen:

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

Finally run the following (while still at the root of home folder)

    ./dotfiles/vundle-install.sh
    
Now open VIM using the "vim" command and type:

    :BundleInstall
    
##Here are links to the software we are using here:

http://brew.sh/
https://github.com/tpope/vim-pathogen
https://github.com/VundleVim/Vundle.vim




