FROM ubuntu:18.04
from continuumio/miniconda
RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge


COPY environment.yml /
RUN conda env create -f environment.yml -n bcftools && \
	conda init bash


RUN apt-get --allow-releaseinfo-change update && apt-get install -y procps

ENV PATH /opt/conda/envs/bcftools/bin:$PATH
