# dotfiles & application installation
Self-explanatory. Inspiration from [Mathias Bynens](https://github.com/mathiasbynens/dotfiles/), [Ian Moersen](https://github.com/i-a-n/mac-setup) and [Ara Abcarians](https://github.com/itsmeara/dotfiles/). [Homebrew](http://brew.sh/) and [GNU Stow](https://www.gnu.org/software/stow/) make life easier.

## Installation

**1) Prep MacOS:**

- Install Xcode CLI
```
xcode-select --install
```
- Show hidden files in Finder
```
defaults write com.apple.finder AppleShowAllFiles YES
```

**2) Install Homebrew:**  
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

**3) Clone this repo:**  
```
cd ~/
```  
```
git clone git@github.com:kieckhafer/dotfiles.git
```

**4) Install Brew software**  
```
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
```  
```
brew tap caskroom/cask
```  
```
cat brew.txt | xargs brew install
```  
```
brew tap caskroom/versions
```

**5) Setup Symlinks via Stow**  
```
cd ~/.dotfiles
```  
```
stow bash
```  
```
stow git
```

**6) Install Brew Casks**  
```
cat brew-cask.txt | xargs brew cask install
```

**7) Install global npm packages**  
```
cat npm.txt | xargs npm install -g
```
