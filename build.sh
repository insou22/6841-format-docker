#!/bin/sh
echo "Connecting to the docker daemon requires sudo: "
sudo docker build -t format6841 .
sudo docker run -d -it --name=format format6841
sudo docker exec -it "format" "/bin/zsh"
