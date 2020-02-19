# Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Configuring ~/.zshrc
mkdir ~/.tasks/
cp ./tasks/* ~/.tasks
chmod 777 ~/.tasks/*

# Installing Git, Python, Node JS
brew install git
brew install python
brew install node

# Install and configure Emacs
brew install emacs --with-cocoa
brew linkapps emacs

# Install Oh My Zshell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installing user_configs for ZSh config:
sh ./userconfig.sh | cat - zshconfig.sh > temp && mv temp zshconfig.sh

# Installing VSCode
wget "https://go.microsoft.com/fwlink/\?LinkID\=620882" -O VSCode-darwin-stable.zip
open VSCode-darwin-stable.zip
mv Visual\ Studio\ Code.app/  /Applications

cat zshconfig.sh >> ~/.zshrc
zsh

# Generating SSH keys
ssh-keygen -f ~/.ssh/id_rsa