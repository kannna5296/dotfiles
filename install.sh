#!/bin/zsh

# Install Homebrew if it's not installed
echo "############## HomeBrew ##############"
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi

# Update Homebrew recipes
brew update

# Install git
echo "############## Git ##############"
if ! command -v git &> /dev/null; then
    echo "Git not found. Installing git..."
    brew install git
    if [ $? -eq 0 ]; then
        echo "Git installed successfully."
    else
        echo "Failed to install Git."
    fi
else
    echo "Git already installed."
fi

# Install VSCode
echo "############## VS Code ##############"
if ! command -v code &> /dev/null; then
    echo "Visual Studio Code not found. Installing Visual Studio Code..."
    brew install --cask visual-studio-code
    if [ $? -eq 0 ]; then
        echo "Visual Studio Code installed successfully."
    else
        echo "Failed to install Visual Studio Code."
    fi
else
    echo "Visual Studio Code already installed."
fi

echo "############## IntelliJ ##############"
# Install IntelliJ IDEA Community Edition
if [ ! -d "/Applications/IntelliJ IDEA CE.app" ]; then
    echo "IntelliJ IDEA Community Edition not found. Installing IntelliJ IDEA Community Edition..."
    brew install --cask intellij-idea-ce
    if [ $? -eq 0 ]; then
        echo "IntelliJ IDEA Community Edition installed successfully."
    else
        echo "Failed to install IntelliJ IDEA Community Edition."
    fi
else
    echo "IntelliJ IDEA Community Edition already installed."
fi

# Install Docker Desktop
echo "############## Docker Desktop for Mac ##############"
if ! command -v docker &> /dev/null; then
    echo "Docker Desktop not found. Installing Docker Desktop..."
    brew install --cask docker
    if [ $? -eq 0 ]; then
        echo "Docker Desktop installed successfully."
    else
        echo "Failed to install Docker Desktop."
    fi
else
    echo "Docker Desktop already installed."
fi

# Install Postman
echo "############## Postman ##############"
if ! command -v postman &> /dev/null; then
    echo "Postman not found. Installing Postman..."
    brew install --cask postman
    if [ $? -eq 0 ]; then
        echo "Postman installed successfully."
    else
        echo "Failed to install Postman."
    fi
else
    echo "Postman already installed."
fi

echo "############## DONE ##############"
echo "All installations are complete!"
