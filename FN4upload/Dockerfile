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

RUN pip3 install oci-cli 

# samtools
#RUN apt install samtools
# htslib
RUN apt install -y autoconf libbz2-dev
WORKDIR /soft/
RUN git clone https://github.com/samtools/htslib.git
WORKDIR /soft/htslib/
RUN git submodule update --init --recursive
#RUN autoheader     # If using configure, generate the header template...
#RUN autoconf       # ...and configure script (or use autoreconf to do both)
RUN autoreconf -i  
RUN ./configure  --disable-lzma  # Optional, needed for choosing optional functionality
RUN make
RUN make install
#samtools git
WORKDIR /soft
RUN git clone https://github.com/samtools/samtools.git
WORKDIR /soft/samtools
RUN autoheader
RUN autoconf -Wno-syntax
RUN ./configure --without-curses
RUN make
RUN make install

# seqtk
WORKDIR /soft
run git clone https://github.com/lh3/seqtk.git
workdir /soft/seqtk
run make
ENV PATH="/soft/seqtk:${PATH}"

# biopython
RUN pip3 install biopython

# mafft 
RUN apt install -y mafft
