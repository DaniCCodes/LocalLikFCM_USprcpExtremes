FROM r-base:3.6.0

RUN apt-get update && apt-get -y --no-install-recommends install libcurl4-openssl-dev libssl-dev

RUN Rscript -e  "install.packages(c('mvtnorm','R.utils','fields','numDeriv','condMVNorm','evd','matrixcalc','rje','ismev','homtest','ggmap','ggplot2','reshape2','plot3D','fda'))"

RUN mkdir -p /llFCM/Results
WORKDIR /llFCM
COPY DataApplication /llFCM/DataApplication
COPY SimulationStudy /llFCM/SimulationStudy
