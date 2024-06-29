#!/bin/zsh

# Function to configure git
configure_git() {
    echo "Let's git config!"
    read -p "Enter your git user name: " git_user_name
    read -p "Enter your git user email: " git_user_email

    git config --global user.name "$git_user_name"
    git config --global user.email "$git_user_email"

    echo "Git configuration set:"
    git config --global --list | grep 'user'
}

configure_git