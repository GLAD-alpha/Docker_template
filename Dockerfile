# Base image, find the appropriate base image from docker hub
# Never use the image with tag : latest, devl, nightly
FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime

# the Author of this docker image
MAINTAINER junsuk

# do not change this part
COPY members.txt ./
RUN cat members.txt >> /etc/passwd


RUN pip install numpy matplotlib

# need to install ipykernel to use pylance on vscode
RUN pip install ipykernel

# just leave this as it is
WORKDIR /home