# dotfiles
Self-explanatory. Inspiration from [Mathias Bynens](https://github.com/mathiasbynens/dotfiles/) and [Ara Abcarians](https://github.com/itsmeara/dotfiles/). [Homebrew](http://brew.sh/) and [GNU Stow](https://www.gnu.org/software/stow/) make life easier.

## Installation

**1) Install Homebrew:**  
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

**2) Clone this repo:**  
```
cd ~/.dotfiles
```  
```
git clone git@github.com:kieckhafer/dotfiles.git
```

**3) Install Brew software**  
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

**4. Setup Symlinks via Stow**  
```
cd ~/.dotfiles
```  
```
stow bash
```  
```
stow git
```

**5. Install Brew Casks**  
```
cat brew-cask.txt | xargs brew cask install
```

**6. Install global npm packages**  
```
cat npm.txt | xargs npm install -g
```
