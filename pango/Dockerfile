FROM ubuntu:18.04
from continuumio/miniconda
RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge

RUN git clone https://github.com/cov-lineages/pangolin.git
WORKDIR pangolin
RUN conda env create -f environment.yml -n pangolin && \
	conda init bash

ENV PATH /opt/conda/envs/pangolin/bin:$PATH
RUN python setup.py install

RUN apt-get update && apt-get install -y procps


