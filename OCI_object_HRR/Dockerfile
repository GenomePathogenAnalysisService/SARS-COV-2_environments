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

# kraken2

# Dependencies
RUN apt-get update && \
    apt-get upgrade -y perl && \
    apt-get install -y git make sed wget g++ rsync locales && \
    locale-gen --purge en_US.UTF-8 && \
    DEBIAN_FRONTEND="noninteractive" dpkg-reconfigure locales && \
    update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8
   

RUN mkdir soft
WORKDIR  /soft
RUN git clone https://github.com/DerrickWood/kraken2.git
WORKDIR /soft/kraken2
RUN mkdir bin
RUN ./install_kraken2.sh /soft/kraken2/bin
ENV PATH="/soft/kraken2/bin:${PATH}"

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
