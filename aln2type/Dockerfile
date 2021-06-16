# Use an official Python runtime as a parent image
FROM ubuntu:20.04

# Install any needed packages specified in requirements.txt
#RUN pip install -r requirements.txt

# Install software
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential python3-setuptools wget python-dev python3-pip

RUN apt-get -y install git

RUN git clone https://github.com/connor-lab/aln2type
WORKDIR /aln2type
RUN pip3 install .

RUN apt install -y mafft
