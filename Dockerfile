# Use a base image with necessary tools
FROM ubuntu:latest

# Install git
RUN apt-get update && apt-get install -y git

# Set up your Jenkins job
# Copy your Jenkinsfile or scripts
# Execute git commands to push to your GitHub repository

# For example:
# Create a directory for your project
WORKDIR /myproject

# Copy your source code to the container
COPY . .

# Set up Git configuration (replace with your GitHub credentials)
RUN git config --global user.email "abbaauwalharuna@gmail.com" && \
    git config --global user.name "hancho6319"

# Add, commit, and push to GitHub
RUN git add . && \
    git commit -m "Commit message" && \
    git push origin master

