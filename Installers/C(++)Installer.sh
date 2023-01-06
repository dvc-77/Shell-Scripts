#!/bin/bash

# Check if VS Code is installed
if [ ! -f "/usr/bin/code" ]; then
  # VS Code is not installed, so download and install it
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
  sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  apt-get update
  apt-get install -y code
fi

# Install the C/C++ extension for VS Code
code --install-extension ms-vscode.cpptools

# Install the recommended extensions for C++ development
code --install-extension abhi3700.c++11
code --install-extension cppitss.vscpp-tasks
code --install-extension jchannon.csharpextensions
code --install-extension khoinguyen.c-cpp-cheatsheet
code --install-extension ms-vscode.cmake-tools
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension natewallace.gcc-compile-run
code --install-extension ritwickdey.LiveServer
code --install-extension xaver.clang-format
