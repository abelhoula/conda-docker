FROM condaforge/mambaforge
COPY environment.yaml .
RUN mamba env create -f environment.yaml
