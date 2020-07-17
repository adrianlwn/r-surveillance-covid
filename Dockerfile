FROM rocker/shiny:3.6.3

RUN apt-get update && \
  apt-get install -y \
  libcurl4-openssl-dev \
  libssl-dev \
  libssh2-1-dev \
  libxml2-dev \
  zlib1g-dev \
  git \
  libcurl4-openssl-dev \
  libssl-dev \
  xclip \
  libsasl2-dev \
  zlib1g-dev \
  libudunits2-dev \
  libgdal-dev \
  libcairo2-dev \
  libfontconfig1-dev \
  libnode-dev \
  libsodium-dev \
  libjq-dev \
  libprotobuf-dev \
  protobuf-compiler \
  libmagick++-dev
  
RUN R -e "install.packages(c('devtools', 'testthat', 'roxygen2'))"

  

  
 
