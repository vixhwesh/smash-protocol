#!/bin/bash

# Build script for Smash Protocol
echo "Starting build process..."

# Install dependencies
echo "Installing dependencies..."
npm install --legacy-peer-deps

# Check if installation was successful
if [ $? -ne 0 ]; then
    echo "Dependency installation failed"
    exit 1
fi

# Build the app
echo "Building the app..."
npm run build

# Check if build was successful
if [ $? -ne 0 ]; then
    echo "Build failed"
    exit 1
fi

echo "Build completed successfully!"
