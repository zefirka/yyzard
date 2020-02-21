echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Git, Python, Node JS"
brew install git
brew install python
brew install node

echo "Install and configure Emacs"
brew install emacs --with-cocoa
brew linkapps emacs
mv emacs/.emacs ~

echo "Install Oh My ZShell"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Configuring ~/.zshrc"
mkdir ~/.tasks/
cp ./tasks/* ~/.tasks
chmod 777 ~/.tasks/*

echo "Installing user_configs for ZSh config:"
sh ./userconfig.sh | cat - zshconfig.sh > temp && mv temp zshconfig.sh
cat zshconfig.sh >> ~/.zshrc
zsh

echo "Generating SSH keys"
ssh-keygen -f ~/.ssh/id_rsa

echo "Installing VSCode"
wget "https://go.microsoft.com/fwlink/\?LinkID\=620882" -O VSCode-darwin-stable.zip
open VSCode-darwin-stable.zip
mv Visual\ Studio\ Code.app/  /Applications

echo "Installing iTerm2"
wget https://iterm2.com/downloads/stable/iTerm2-3_3_9.zip -O iterm.zip
open iterm.zip
mv iTerm.app /Applications

echo "Installing Chromium"
brew cask install chromium

echo "Installing Bitbar"
brew cask install bitbar