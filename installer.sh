#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

brew install curl git fish tmux neovim python3 nodejs yarn wget fish 

sudo spctl --master-disable

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
sh -c "$(curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)"
sh -c "$(curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish)"
sh -c "$(curl -sSL https://get.rvm.io | bash -s stable --ruby)"
sh -c "$(curl -L --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish)"
echo 'rvm default' >> ~/.config/fish/config.fish
# git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate

# curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
# curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh

git clone git://github.com/seyhadot/config.git ~/.dotfiles

cd ~/.dotfiles && brew bundle

ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
mkdir -p ~/.config/nvim
ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim

ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/omf.fish ~/.config/fish/conf.d/omf.fish


vim +PlugInstall +qall
