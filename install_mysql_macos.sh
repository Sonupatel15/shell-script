#!/bin/bash

echo "Checking if Homebrew is installed..."
if ! command -v brew &> /dev/null
then
    echo "❌ Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew is already installed."
fi

echo "Updating Homebrew..."
brew update

echo "Installing MySQL..."
brew install mysql

echo "Starting MySQL service..."
brew services start mysql

echo "Checking MySQL version..."
mysql --version

echo "✅ MySQL installation completed successfully!"
