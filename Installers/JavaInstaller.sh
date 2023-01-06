#!/bin/bash

# Download the latest version of Java SE
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/latest/jdk-8u221-linux-x64.tar.gz

# Extract the downloaded archive
tar -xzf jdk-8u221-linux-x64.tar.gz

# Remove the downloaded archive
rm jdk-8u221-linux-x64.tar.gz

# Set the JAVA_HOME environment variable
echo "export JAVA_HOME=$(pwd)/jdk1.8.0_221" >> ~/.bashrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc

# Reload the bashrc file
source ~/.bashrc

# Install the Java Extension Pack
code --install-extension vscjava.vscode-java-pack

# Install the Checkstyle for Java extension
code --install-extension shenwei356.checkstyle

# Install the FindBugs extension
code --install-extension spotbugs.findbugs
