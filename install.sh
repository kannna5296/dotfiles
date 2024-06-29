#!/bin/zsh

# Install Homebrew if it's not installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi

# Update Homebrew recipes
brew update

# Install packages from Brewfile
brew bundle --file=Brewfile

# Install git
if ! command -v git &> /dev/null; then
    echo "Git not found. Installing git..."
    brew install git
else
    echo "Git already installed."
fi

# Install VSCode
if ! command -v code &> /dev/null; then
    echo "Visual Studio Code not found. Installing Visual Studio Code..."
    brew install --cask visual-studio-code
else
    echo "Visual Studio Code already installed."
fi

# Install IntelliJ IDEA Community Edition
if ! command -v idea &> /dev/null; then
    echo "IntelliJ IDEA Community Edition not found. Installing IntelliJ IDEA Community Edition..."
    brew install --cask intellij-idea-ce
else
    echo "IntelliJ IDEA Community Edition already installed."
fi

echo "All installations are complete!"
