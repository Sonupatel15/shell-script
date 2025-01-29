#!/bin/bash

echo "Checking if Homebrew is installed..."
if ! command -v brew &>/dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew is already installed."
fi

echo "Updating Homebrew..."
brew update

echo "Installing Docker..."
brew install --cask docker

echo "Launching Docker..."
open -a Docker

echo "Waiting for Docker to start..."
while ! docker system info &>/dev/null; do
    sleep 2
done

echo "Verifying Docker installation..."
docker --version

if [ $? -eq 0 ]; then
    echo "✅ Docker installed successfully!"
else
    echo "❌ Docker installation failed. Please check for errors."
fi
