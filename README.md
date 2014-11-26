dotfiles
=======

After cloning repo run the following command from the root of your home directory:

If working on a mac:

./dotfiles/mac-conf.sh

If Ubuntu:

./dotfiles/ubuntu-conf.sh

If you don't have a pimped out VIM or you have errors when starting vim, run:

./dotfiles/vundle-install.sh then inside vim run :BundleInstall

In order to use this feature fully you should do the following:

1. brew install macvim
2. cd /usr/local/bin
3. sudo ln -s /usr/local/Cellar/macvim/MVIM_VERSION/bin/mvim vim


