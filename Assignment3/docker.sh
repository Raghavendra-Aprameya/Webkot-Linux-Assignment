#!/bin/bash
echo "Checking if Homebrew is installed..."
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL
https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi
echo "Updating Homebrew..."
brew update
echo "Installing Docker..."
brew install --cask docker
echo "Starting Docker..."
open /Applications/Docker.app
echo "Waiting for Docker to start..."
sleep 10
echo "Checking Docker version..."
docker --version
echo "Running a test container (hello-world)..."
docker run hello-world
