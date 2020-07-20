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
  libmagick++-dev \
  curl

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
  
RUN R -e "install.packages(c('devtools', 'testthat', 'roxygen2', 'magick', 'data.table', 'dplyr', 'DT', 'devEMF', 'ggplot2', 'cowplot', 'officer', 'openxlsx', 'flextable', 'hrbrthemes', 'kableExtra', 'knitr', 'leaflet', 'lubridate', 'data.table', 'magrittr', 'mapview', 'plotly', 'RColorBrewer', 'rgdal', 'readr', 'readxl', 'rlang', 'rmarkdown', 'rdrop2', 'rmapshaper', 'rsconnect', 'scales', 'sf', 'shiny', 'shinyjs', 'shinydashboard', 'shinymanager', 'shinycssloaders', 'shinyWidgets', 'shinyBS', 'sodium', 'tidyr', 'V8', 'webshot','zoo'), repos='http://cran.us.r-project.org', dependencies=TRUE)"

  

  
 
