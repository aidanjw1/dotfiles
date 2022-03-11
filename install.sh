if [[ "$SKIP_LINKS" != "true" ]]
then
    # Link .config files to home directory
    ln -sf ~/.dotfiles/.zshrc ~/.zshrc
    ln -sf ~/.dotfiles/.zsh/* ~/.zsh
    touch ~/.zsh/variables
    ln -sf ~/.dotfiles/.vimrc ~/.vimrc
    ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
    ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
fi

if [[ "$SKIP_BREW" != "true" ]]
then
    # Install homebrew and Brewfile apps
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    brew bundle install
fi

