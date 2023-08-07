FROM continuumio/miniconda3

RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge

RUN apt update && apt install -y curl vim

RUN git clone https://github.com/cov-lineages/pangolin.git
WORKDIR pangolin

RUN git checkout $(curl -s -L -I -o /dev/null -w '%{url_effective}' https://github.com/cov-lineages/pangolin/releases/latest | xargs basename)

RUN conda init bash

# Update the current base instead of creating a new environment
RUN sed -i 's/name: pangolin/name: base/' environment.yml && \
    sed -i '/python/d' environment.yml && \
    sed -i '/pip=/d' environment.yml

RUN conda env update --file environment.yml

RUN python setup.py install
