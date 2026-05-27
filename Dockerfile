# Specify base image
FROM rocker/verse:4.6

# Install specific versions of packages
RUN Rscript -e "pak::pak('survminer@0.5.2')"
RUN Rscript -e "pak::pak('survsim@1.1.8')"

# Set working directory
WORKDIR /home/rstudio
