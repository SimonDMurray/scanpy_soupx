FROM rocker/r-ver:4.1

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y -qq

RUN apt-get install -y -qq --no-install-recommends \
    build-essential liblzma-dev libbz2-dev zlib1g libpng-dev libxml2-dev \
    gfortran-7 libglpk-dev libhdf5-dev libcurl4-openssl-dev 

RUN apt-get install -y -qq --no-install-recommends \
    python3.8 python3.8-dev python3-pip python-is-python3

RUN pip3 install --upgrade pip

RUN pip3 install --no-cache \
    python-igraph leidenalg \
    pandas scanpy 

RUN Rscript -e "install.packages(c('Matrix', 'Seurat', 'SoupX', 'R.utils'))"

ENTRYPOINT ["bash"]
