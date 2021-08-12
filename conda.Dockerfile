FROM continuumio/miniconda3:4.10.3
RUN conda install --yes --name=base \
        python=3.9 \
        h5py \
        jupyter \
        matplotlib \
        numpy \
        pandas \
        scipy \
    && conda clean --all --yes
WORKDIR /notebooks
# Add non-root user
RUN adduser nonroot
# Switch to non-root user
USER nonroot
ENTRYPOINT ["jupyter-notebook"]
