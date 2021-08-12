# See https://hub.docker.com/r/tensorflow/tensorflow/tags for available Docker images.
FROM tensorflow/tensorflow:2.4.3-gpu-jupyter
RUN pip install --no-cache-dir https://github.com/p-koo/libre/tarball/master
ENTRYPOINT ["jupyter-notebook", "--no-browser"]
